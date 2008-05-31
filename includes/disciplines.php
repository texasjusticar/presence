<?php

	include_once ('/var/www/monger.vekn.org/public/monger.txt');

	$disc = '';
	$posts = $row['user_posts'];
	$disciplines = array();
	$supdisciplines = array();
	
	$disciplinequery = "select inferior,superior from phpbb_user_disciplines where user_id=".$row['user_id'];
	$discresult = $db->sql_query($disciplinequery);
	$discrecord = $db->sql_fetchrow($discresult);

	if (($discrecord['inferior']) || ($discrecord['superior'])) {
		if (!empty($discrecord['inferior'])) {
			$disciplines = explode(",",$discrecord['inferior']); 
		}
		if (!empty($discrecord['superior'])) {
			$supdisciplines = explode(",",$discrecord['superior']);
		}
	} else {
		// no custom disciplines, let's pull from the current clan
		
		$discquery = "select g.group_description from phpbb_groups g, phpbb_user_group ug where g.group_single_user=0 and ug.group_id=g.group_id and ug.user_id=".$row['user_id'];
		$discresult = $db->sql_query($discquery);
		$discrecord = $db->sql_fetchrow($discresult);

		if ($discrecord['group_description']) {
			$dischash = str_replace("\r","\n",trim($discrecord['group_description']));
			$dischash = str_replace("\n\n","\n",$dischash);
			$disciplines = explode("\n",$dischash);
			$supdisciplines = array();
			
			if ($posts < 10) {
				$disciplines = array();
			} elseif ($posts < 25) {
				unset($disciplines[1]);
				unset($disciplines[2]);
			} elseif ($posts < 50) {
				unset($disciplines[2]);
			} elseif ($posts < 100) {
				// do nothing, 4 cap has all inferiors
			} elseif ($posts < 200) {
				$supdisciplines[] = $disciplines[0];
				unset($disciplines[0]);
			} elseif ($posts < 300) {
				$supdisciplines = $disciplines;
				unset($disciplines[0]);
				unset($disciplines[1]);
				unset($supdisciplines[2]);
			} else {
				$supdisciplines = $disciplines;
				$disciplines = array();
			}
		}
	}
	/*
	// special case for previcus admin
	if ($row['user_id']==2) {
		$disciplines = array();
		$supdisciplines = array("Auspex","Presence","Vicissitude");
	}*/
	
	asort($disciplines);
	asort($supdisciplines);
	
	$disc = '';
	
	foreach ($disciplines as $discipline) {
		$disc .= discipline_icon($discipline,0)."<br/>";
	}
	
	foreach ($supdisciplines as $discipline) {
		$disc .= discipline_icon($discipline,1)."<br/>";
	}
	
	$row['user_disc'] = "<div align='center'>".$disc."</center>";
?>
