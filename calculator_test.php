<?php
session_start();

?>

<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Great Moods</title>

<link href="css/mainStyles.css" rel="stylesheet" type="text/css" />
<link href="css/incomeCalculatorStyles.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	var LHtotal;
	var AHtotal;
	var LMtotal;
	var AMtotal;
	var schoolTotal;
	var churchTotal;
	var grandTotal1;
	function calculateSchool(orgType) {
	        //large high schools
		var fund = Number(document.getElementById("LHfund").value);
		var people = Number(document.getElementById("LHpeople").value);
		var percent = (Number(document.getElementById("LHpercent").value))/100;
		var active = people * percent;
		active = Number(active);
		document.getElementById("LHactive").innerHTML = active;
		var baskets = Number(document.getElementById("LHbaskets").value);
		var numPerYear = Number(document.getElementById("LHnumPerYear").value);
		var price = 26.00;
		var commision = 0.10;
		var total1 = fund * active * baskets * numPerYear * price * commision;
		var result1 = format(total1,2);
		grandTotal1 = result1;
		schoolTotal = result1;
		document.getElementById("LHtotal").innerHTML = result1;
		document.getElementById("schoolTotal").innerHTML = schoolTotal;
		document.getElementById("grandTotal").innerHTML = result1;
		
		//average high schools
		var fund2 = Number(document.getElementById("AHfund").value);
		var people2 = Number(document.getElementById("AHpeople").value);
		var percent2 = (Number(document.getElementById("AHpercent").value))/100;
		var active2 = people2 * percent2;
		active2 = Number(active2);
		document.getElementById("AHactive").innerHTML = active2;
		var baskets2 = Number(document.getElementById("AHbaskets").value);
		var numPerYear2 = Number(document.getElementById("AHnumPerYear").value);
		var total2 = fund2 * active2 * baskets2 * numPerYear2 * price * commision;
		var result2 = format(total2,2);
		document.getElementById("AHtotal").innerHTML = result2;
		grandTotal1 += result2;
		schoolTotal += result2;
		schoolTotal = format(schoolTotal,2);
		document.getElementById("schoolTotal").innerHTML = schoolTotal;
		document.getElementById("grandTotal").innerHTML = grandTotal1;
		
		//large middle schools
		var fund3 = Number(document.getElementById("LMfund").value);
		var people3 = Number(document.getElementById("LMpeople").value);
		var percent3 = (Number(document.getElementById("LMpercent").value))/100;
		var active3 = people3 * percent3;
		active3 = Number(active3);
		document.getElementById("LMactive").innerHTML = active3;
		var baskets3 = Number(document.getElementById("LMbaskets").value);
		var numPerYear3 = Number(document.getElementById("LMnumPerYear").value);
		var total3 = fund3 * active3 * baskets3 * numPerYear3 * price * commision;
		var result3 = format(total3,2);
		document.getElementById("LMtotal").innerHTML = result3;
		grandTotal1 += result3;
		schoolTotal += result3;
		schoolTotal = format(schoolTotal,2);
		document.getElementById("schoolTotal").innerHTML = schoolTotal;
		document.getElementById("grandTotal").innerHTML = grandTotal1;
		
		//average middle schools
		var fund4 = Number(document.getElementById("AMfund").value);
		var people4 = Number(document.getElementById("AMpeople").value);
		var percent4 = (Number(document.getElementById("AMpercent").value))/100;
		var active4 = people4 * percent4;
		active4 = Number(active4);
		document.getElementById("AMactive").innerHTML = active4;
		var baskets4 = Number(document.getElementById("AMbaskets").value);
		var numPerYear4 = Number(document.getElementById("AMnumPerYear").value);
		var total4 = fund4 * active4 * baskets4 * numPerYear4 * price * commision;
		var result4 = format(total4,2);
		document.getElementById("AMtotal").innerHTML = result4;
		grandTotal1 += result4;
		schoolTotal += result4;
		document.getElementById("schoolTotal").innerHTML = schoolTotal;
		document.getElementById("grandTotal").innerHTML = grandTotal1;
		
		//elementary schools
		var fund5 = Number(document.getElementById("Efund").value);
		var people5 = Number(document.getElementById("Epeople").value);
		var percent5 = (Number(document.getElementById("Epercent").value))/100;
		var active5 = people5 * percent5;
		active5 = Number(active5);
		document.getElementById("Eactive").innerHTML = active5;
		var baskets5 = Number(document.getElementById("Ebaskets").value);
		var numPerYear5 = Number(document.getElementById("EnumPerYear").value);
		var total5 = fund5 * active5 * baskets5 * numPerYear5 * price * commision;
		var result5 = format(total5,2);
		grandTotal1 += result5;
		orgTotal = result5;
		document.getElementById("Etotal").innerHTML = result5;
		document.getElementById("orgTotal").innerHTML = orgTotal;
		document.getElementById("grandTotal").innerHTML = grandTotal1;
		
		//organizations
		var fund6 = Number(document.getElementById("Ofund").value);
		var people6 = Number(document.getElementById("Opeople").value);
		var percent6 = (Number(document.getElementById("Opercent").value))/100;
		var active6 = people6 * percent6;
		active6 = Number(active6);
		document.getElementById("Oactive").innerHTML = active6;
		var baskets6 = Number(document.getElementById("Obaskets").value);
		var numPerYear6 = Number(document.getElementById("OnumPerYear").value);
		var total6 = fund6 * active6 * baskets6 * numPerYear6 * price * commision;
		var result6 = format(total6,2);
		document.getElementById("Etotal").innerHTML = result6;
		grandTotal1 += result6;
		orgTotal += result6;
		document.getElementById("Ototal").innerHTML = result6;
		document.getElementById("orgTotal").innerHTML = orgTotal;
		document.getElementById("grandTotal").innerHTML = grandTotal1;	
	}
	function format(num, dec) {
        return Math.round(num*Math.pow(10,dec))/Math.pow(10,dec);
        }
	
</script>
</head>

<style type="text/css">
#headerTop{
	background: no-repeat;
	background-position:right top;
	width:1024px;
	height:130px;
	padding:0;
	margin:0;
	position:relative;
	z-index:3;
	}
#content{
	position:relative;
	top:-50px;
	padding-bottom:50px;
	}

</style>
<body>
<div id="container">
	<?php include 'header.php' ; ?>
    <?php include 'mainLeftSidebar.php' ; ?>
    	<div id="content">
    		<h1 id="pageTitle">Income Calculator</h1>
				<h3 id="pageTitleSub">You can fInd out how much you can makeby using our Earning Potential Calculator 				below </h3>
                <div id="leadBox">
                    <div id="infoText">
                        <div id="redBar1"><p>The calculator is simple to use. Type in:</p> </div>
                           <ul>
                                <li>The number of accounts that you think you can setup</li>
                                <li>The average number of students/members who will participate in the fundraisers</li>
                                <li>The average number of gift basketsthat they will sell</li>
                                <li>$26 for the aveage wholesale price of a basket</li>
                                <li>Enter the average number of fundraisers each account will setup in one year, 3 is a good average-Holiday/Christmas, Valentine's Day, Easter, Mother's Day Father's Day</li>
                                <li>Multiply by your commission percentage-6%</li>
                           </ul>
                        </div><!--end redBar1-->
                		<img id="leadInImg" src="images/calculatorimage.png" width="340" height="205"><!--leadin image-->
                	</div><!--end infoText-->
				</div>
                
                 	
                         <div id="infoTextTableWrapper">
                             <h3>Calculator Example of a Church</h3>
                             <table id="example1" cellspacing="0" cellpadding="3" >
                               <tr>
                                   <th>Churches</th>
                                  
                                   <th>No. of Churches</th>
                                   <th></th>
                                   <th>No. of Members</th>
                                   <th></th>
                                   <th>Participating % of Members</th>
                                   <th></th>
                                    <th></th>
                                   <th>Gift Baskets Sold Per Fundraiser</th>
                              	   
                                   <th></th>
                                   <th>$26 Average Whsle Price</th>
                                   <th></th>
                                   <th>Fundraisers Per Year</th>
                                   <th></th>
                                   <th></th>
                                   <th>Commission</th>
                                  <th></th>
                                   
                                   <th>Your Earnings</th>
                                </tr> 
                                <tr>
                                   <td >Large Churches<br/> (1000+ members)</td>
                                   
                                   <td>12</td>
                                   <td>x</td>
                                   <td>1000</td>
                                   <td>x</td>
                                   <td>33.33</td>
                                   <td>%</td>
                                   <td>x</td>
                                   <td>2</td>
                                   <td>x</td>
                                   <td>$26.00</td>
                                   <td>x</td>
                                   <td>2</td>
                                   <td>x</td>
                                    <td></td>
                                   <td>10%</td>
                                   <td>=</td>
                                   <td>$41,184.00</td>
                               <tr/>
                           <tr>
                                   <td >Avg. Churches<br/> (100-999 members)</td>
                                  
                                   <td>12</td>
                                   <td>x</td>
                                   <td>320</td>
                                   <td>x</td>
                                   <td>33.33</td>
                                   <td>%</td>
                                   <td>x</td>
                                   <td>2</td>
                                   <td>x</td>
                                   <td>$26.00</td>
                                   <td>x</td>
                                   <td>2</td>
                                   <td>x</td>
                                   <td></td>
                                   <td>10%</td>
                                   <td>=</td>
                                   <td>$13,178.88</td>
                               <tr/>
                             <tr>
                                   <td >Total Commission From Churches</td>
                                   
                                   <td>12</td>
                                   <td>x</td>
                                   <td>320</td>
                                   <td>x</td>
                                   <td>33.33</td>
                                   <td>%</td>
                                   <td>x</td>
                                   <td>2</td>
                                   <td>x</td>
                                   <td>$26.00</td>
                                   <td>x</td>
                                   <td>2</td>
                                   <td>x</td>
                                    <td></td>
                                   <td>Total</td>
                                   <td>=</td>
                                   <td>$54,362.88</td>
                               <tr/>
                           </table>
                   		</div><!--end infoTextTableWrapper-->
                  
        		
                         <div id="infoTextTableWrapper">
                              <h3>Try Our Calculator!</h3>
					<table id="example1">
                                           <tr>
                                                <th>Secondary Schools</th>
                                                <th># of School Fundraisers</th>
                                                <th># of Enrolled</th>
                                               <th>% Participating</th>
                                              <th>No. Students on Clubs/Teams</th>
                                               <th>Gift Baskets Sold</th>
                                                <th>$26 Avg Whsle Price</th>
                                               <th>Fundraisers Per Year</th>
                                               <th>Commission</th>
                                               <th>Your Total Commission</th>
                                            </tr>
                                            <tr>
                                                <td>Large High Schools (55 Clubs/Teams) 2400+ Students</td>
                                                <td><input type="text" id='LHfund' name"" size="5" onchange='calculateSchool("LH")'/>x</td>
                                                
                                                <td>[<input type="text" id='LHpeople' name"" size="4" onchange='calculateSchool("LH")'/></td>
                                                
                                                <td>x<input type="text" id='LHpercent' name"" size="5" onchange='calculateSchool("LH")'/></td>
                                                
                                                <td id='LHactive'>= ]</td>
                                                
                                                <td>x<input type="text" id='LHbaskets' name"" size="4" onchange='calculateSchool("LH")'/></td>
                                               <td id='LHprice'> x$26.00</td>
                                                <td>x <input type="text" id='LHnumPerYear' name"" size="5" onchange='calculateSchool("LH")'/></td>
                                                <td id='commision'>x<b>10% =</b></td>
                                                
                                                <td id='LHtotal'></td>
                                            </tr>
                                           
                                            <tr>
                                               <td>Avg High Schools (40 Clubs/Teams) 855+ Students</td>
                                              <td><input type="text" id='AHfund' name"" size="5" onchange='calculateSchool("AH")'/>x</td>
                                                
                                                <td>[<input type="text" id='AHpeople' name"" size="4" onchange='calculateSchool("AH")'/></td>
                                                
                                                <td>x<input type="text" id='AHpercent' name"" size="5" onchange='calculateSchool("AH")'/></td>
                                                
                                                <td id='AHactive'>= ]</td>
                                                
                                                <td>x<input type="text" id='AHbaskets' name"" size="4" onchange='calculateSchool("AH")'/></td>
                                               <td> x&nbsp;$26.00</td>
                                                <td>x <input type="text" id='AHnumPerYear' name"" size="5" onchange='calculateSchool("AH")'/></td>
                                                <td>x<b>&nbsp;10% &nbsp;=</b></td>
                                                
                                                <td id='AHtotal'></td>
                                           </tr>
                                            <tr>
                                               <td>Large Middle Schools (55 Clubs/Teams) 1855+ Students</td>
                                              <td><input type="text" id='LMfund' name"" size="5" onchange='calculateSchool("LM")'/>x</td>
                                                
                                                <td>[<input type="text" id='LMpeople' name"" size="4" onchange='calculateSchool("LM")'/></td>
                                                
                                                <td>x<input type="text" id='LMpercent' name"" size="5" onchange='calculateSchool("LM")'/></td>
                                                
                                                <td id='LMactive'>= ]</td>
                                                
                                                <td>x<input type="text" id='LMbaskets' name"" size="4" onchange='calculateSchool("LM")'/></td>
                                               <td> x&nbsp;$26.00</td>
                                                <td>x <input type="text" id='LMnumPerYear' name"" size="5" onchange='calculateSchool("LM")'/></td>
                                                <td>x<b>&nbsp;10% &nbsp;=</b></td>
                                                
                                                <td id='LMtotal'></td>
                                           </tr>
                                           <tr>
                                               <td>Avg Middle Schools (40 Clubs/Teams) 650+ Students</td>
                                              <td><input type="text" id='AMfund' name"" size="5" onchange='calculateSchool("AM")'/>x</td>
                                                
                                                <td>[<input type="text" id='AMpeople' name"" size="4" onchange='calculateSchool("AM")'/></td>
                                                
                                                <td>x<input type="text" id='AMpercent' name"" size="5" onchange='calculateSchool("AM")'/></td>
                                                
                                                <td id='AMactive'>= ]</td>
                                                
                                                <td>x<input type="text" id='AMbaskets' name"" size="4" onchange='calculateSchool("AM")'/></td>
                                               <td> x&nbsp;$26.00</td>
                                                <td>x <input type="text" id='AMnumPerYear' name"" size="5" onchange='calculateSchool("AM")'/></td>
                                                <td>x<b>&nbsp;10% &nbsp;=</b></td>
                                                
                                                <td id='AMtotal'></td>
                                           </tr>
                                            <tr>
                                               	<td>Total Commissions From Schools</td>
                                               	<td> </td>
                                                <td> </td>
                                                <td> </td>
                                                <td> </td>
                                                <td> </td>
                                                <td> </td>
                                                <td> </td>
                                                <td> </td>
                                                <td style="border:2px solid #000;" id='schoolTotal'></td>
                                            </tr>
                                  </table>
				
                   		</div><!--end infoTextTableWrapper-->
				
                         <div id="infoTextTableWrapper">
                              <h3>Calculator Example of a Church</h3>
                             			 <table id="example1">
                                           <tr>
                                                <th>Churches</th>
                                                <th># of Churches</th>
                                                <th># of Members</th>
                                               <th>% Participating</th>
                                               <th>Gift Baskets Sold</th>
                                                <th>$26 Avg Wholesale Price</th>
                                               <th>Fundraisers Per Year</th>
                                               <th>10% Commission</th>
                                              <th>Your Total Commission</th>
                                            </tr>
                                            <tr>
                                                <td>Large Churches (1000+ Members) </td>
                                                <td><input type="text" id='Lnum' name"" size="5" onchange='calculateSchool("L")'/></td>
                                                
                                                <td>x<input type="text" id='Lmembers' name"" size="5" onchange='calculateSchool("L")'/></td>
                                                
                                                <td>x<input type="text" id='Lpercent' name"" size="5" onchange='calculateSchool("L")'/></td>
                                                
                                                <td>x<input type="text" id='Lbaskets' name"" size="5" onchange='calculateSchool("L")'/></td>
                                                <td>x $26.00</td>
                                                <td>x<input type="text" id='LfundPerYear' name"" size="5" onchange='calculateSchool("L")'/></td>
                                               
                                                <td> 10%</td>
                                                <td id='Ltotal'>= </td>
                                            </tr>
                                           
                                            <tr>
                                               <td>Avg Churches (100-999 Members)</td>
                                               <td><input type="text" id='Anum' name"" size="5" onchange='calculateSchool("A")'/></td>
                                                
                                                <td>x<input type="text" id='Amembers' name"" size="5" onchange='calculateSchool("A")'/></td>
                                                
                                                <td>x<input type="text" id='Apercent' name"" size="5" onchange='calculateSchool("A")'/></td>
                                                
                                                <td>x<input type="text" id='Abaskets' name"" size="5" onchange='calculateSchool("A")'/></td>
                                                <td>x $26.00</td>
                                                <td>x<input type="text" id='AfundPerYear' name"" size="5" onchange='calculateSchool("A")'/></td>
                                               
                                                <td> x10%</td>
                                                <td id='Atotal'>= </td>
                                         </tr>
                                          <tr>  
                                             <td>Total Commissions From Churches</td>
                                             <td> </td>
                                             <td> </td>
                                             <td> </td>
                                             <td> </td>
                                             <td> </td>
                                             <td> </td>
                                             <td> </td>
                                             <td style="border:2px solid #000;" id='churchTotal'></td>
                    					<tr/>
                    		</table>

                   		</div><!--end infoTextTableWrapper-->
        			<div id="infoTextTableWrapper">
                        <h3>Calculator Example of a Church</h3>
           							<table id="example1">
                                           <tr>
                                                <th>Secondary Schools</th>
                                                <th># of School Fundraisers</th>
                                                <th># of Enrolled</th>
                                               <th>% Participating</th>
                                              <th>No. Students on Clubs/Teams</th>
                                               <th>Gift Baskets Sold</th>
                                                <th>$26 Avg Whsle Price</th>
                                               <th>Fundraisers Per Year</th>
                                               <th>Commission</th>
                                               <th>Your Total Commission</th>
                                            </tr>
                                            <tr>
                                                <td>Elementary Schools(PTO Others) 500+</td>
                                                <td><input type="text" id='Efund' name"" size="5" onchange='calculateSchool()'/></td>
                                                
                                                <td>x<input type="text" id='Epeople' name"" size="4" onchange='calculateSchool()'/></td>
                                                
                                                <td>x<input type="text" id='Epercent' name"" size="5" onchange='calculateSchool()'/></td>
                                                
                                                <td id='Eactive'></td>
                                                
                                                <td>x<input type="text" id='Ebaskets' name"" size="4" onchange='calculateSchool()'/></td>
                                               <td> x$26.00</td>
                                                <td>x <input type="text" id='EnumPerYear' name"" size="5" onchange='calculateSchool()'/></td>
                                                <td>x<b>10% =</b></td>
                                                
                                                <td id='Etotal'></td>
                                            </tr>
                                           
                                            <tr>
                                               <td>Organizations</td>
                                              <td><input type="text" id='Ofund' name"" size="5" onchange='calculateSchool("O")'/></td>
                                                
                                                <td>x<input type="text" id='Opeople' name"" size="4" onchange='calculateSchool("O")'/></td>
                                                
                                                <td>x<input type="text" id='Opercent' name"" size="5" onchange='calculateSchool("O")'/></td>
                                                
                                                <td id='Oactive'></td>
                                                
                                                <td>x<input type="text" id='Obaskets' name"" size="4" onchange='calculateSchool("O")'/></td>
                                               <td> x&nbsp;$26.00</td>
                                                <td>x <input type="text" id='OnumPerYear' name"" size="5" onchange='calculateSchool("O")'/></td>
                                                <td>x<b>&nbsp;10% &nbsp;=</b></td>
                                                
                                                <td id='Ototal'></td>
                                           </tr>
                                            <tr>
                                               	<td>Total Commissions From Schools</td>
                                               	<td> </td>
                                                <td> </td>
                                                <td> </td>
                                                <td> </td>
                                                <td> </td>
                                                <td> </td>
                                                <td> </td>
                                                 <td> </td>
                                                <td id='orgTotal' style="border:2px solid #000;"></td>
                                            </tr>
                                  </table>
				
                   		 </div><!--end infoTextTableWrapper-->
                        <div id="redBar2"><p>Total Number of commissions from schools, churches and organizations : &nbsp;&nbsp;&nbsp;&nbsp;$</p><span id="grandTotal" style="background-color: #fff; color: #000; padding: 2px;"></span>
                       
                       
        </div><!--end content-->
    <?php include 'footer.php' ; ?>
</div><!--end container-->

</body>
</html>