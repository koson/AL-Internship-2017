<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.2.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="no" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-garry" urn="urn:adsk.eagle:library:147">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;a href="www.mpe-connector.de"&gt;Menufacturer&lt;/a&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="332-50" library_version="1">
<description>&lt;b&gt;50 Pin - 2mm Dual Row&lt;/b&gt;&lt;p&gt;
Source: www.mpe-connector.de / garry_shortform_2012.pdf</description>
<wire x1="-24.85" y1="-1.9" x2="24.85" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="24.85" y1="-1.9" x2="24.85" y2="-0.4" width="0.2032" layer="21"/>
<wire x1="24.85" y1="0.4" x2="24.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="24.85" y1="1.9" x2="-24.85" y2="1.9" width="0.2032" layer="21"/>
<wire x1="-24.85" y1="1.9" x2="-24.85" y2="0.4" width="0.2032" layer="21"/>
<wire x1="-24.85" y1="-0.4" x2="-24.85" y2="-1.9" width="0.2032" layer="21"/>
<wire x1="-24.85" y1="0.4" x2="-24.85" y2="-0.4" width="0.2032" layer="21" curve="-129.185"/>
<wire x1="24.85" y1="-0.4" x2="24.85" y2="0.4" width="0.2032" layer="21" curve="-129.185"/>
<pad name="1" x="-24" y="-1" drill="0.9" diameter="1.27"/>
<pad name="2" x="-24" y="1" drill="0.9" diameter="1.27"/>
<pad name="3" x="-22" y="-1" drill="0.9" diameter="1.27"/>
<pad name="4" x="-22" y="1" drill="0.9" diameter="1.27"/>
<pad name="5" x="-20" y="-1" drill="0.9" diameter="1.27"/>
<pad name="6" x="-20" y="1" drill="0.9" diameter="1.27"/>
<pad name="7" x="-18" y="-1" drill="0.9" diameter="1.27"/>
<pad name="8" x="-18" y="1" drill="0.9" diameter="1.27"/>
<pad name="9" x="-16" y="-1" drill="0.9" diameter="1.27"/>
<pad name="10" x="-16" y="1" drill="0.9" diameter="1.27"/>
<pad name="11" x="-14" y="-1" drill="0.9" diameter="1.27"/>
<pad name="12" x="-14" y="1" drill="0.9" diameter="1.27"/>
<pad name="13" x="-12" y="-1" drill="0.9" diameter="1.27"/>
<pad name="14" x="-12" y="1" drill="0.9" diameter="1.27"/>
<pad name="15" x="-10" y="-1" drill="0.9" diameter="1.27"/>
<pad name="16" x="-10" y="1" drill="0.9" diameter="1.27"/>
<pad name="17" x="-8" y="-1" drill="0.9" diameter="1.27"/>
<pad name="18" x="-8" y="1" drill="0.9" diameter="1.27"/>
<pad name="19" x="-6" y="-1" drill="0.9" diameter="1.27"/>
<pad name="20" x="-6" y="1" drill="0.9" diameter="1.27"/>
<pad name="21" x="-4" y="-1" drill="0.9" diameter="1.27"/>
<pad name="22" x="-4" y="1" drill="0.9" diameter="1.27"/>
<pad name="23" x="-2" y="-1" drill="0.9" diameter="1.27"/>
<pad name="24" x="-2" y="1" drill="0.9" diameter="1.27"/>
<pad name="25" x="0" y="-1" drill="0.9" diameter="1.27"/>
<pad name="26" x="0" y="1" drill="0.9" diameter="1.27"/>
<pad name="27" x="2" y="-1" drill="0.9" diameter="1.27"/>
<pad name="28" x="2" y="1" drill="0.9" diameter="1.27"/>
<pad name="29" x="4" y="-1" drill="0.9" diameter="1.27"/>
<pad name="30" x="4" y="1" drill="0.9" diameter="1.27"/>
<pad name="31" x="6" y="-1" drill="0.9" diameter="1.27"/>
<pad name="32" x="6" y="1" drill="0.9" diameter="1.27"/>
<pad name="33" x="8" y="-1" drill="0.9" diameter="1.27"/>
<pad name="34" x="8" y="1" drill="0.9" diameter="1.27"/>
<pad name="35" x="10" y="-1" drill="0.9" diameter="1.27"/>
<pad name="36" x="10" y="1" drill="0.9" diameter="1.27"/>
<pad name="37" x="12" y="-1" drill="0.9" diameter="1.27"/>
<pad name="38" x="12" y="1" drill="0.9" diameter="1.27"/>
<pad name="39" x="14" y="-1" drill="0.9" diameter="1.27"/>
<pad name="40" x="14" y="1" drill="0.9" diameter="1.27"/>
<pad name="41" x="16" y="-1" drill="0.9" diameter="1.27"/>
<pad name="42" x="16" y="1" drill="0.9" diameter="1.27"/>
<pad name="43" x="18" y="-1" drill="0.9" diameter="1.27"/>
<pad name="44" x="18" y="1" drill="0.9" diameter="1.27"/>
<pad name="45" x="20" y="-1" drill="0.9" diameter="1.27"/>
<pad name="46" x="20" y="1" drill="0.9" diameter="1.27"/>
<pad name="47" x="22" y="-1" drill="0.9" diameter="1.27"/>
<pad name="48" x="22" y="1" drill="0.9" diameter="1.27"/>
<pad name="49" x="24" y="-1" drill="0.9" diameter="1.27"/>
<pad name="50" x="24" y="1" drill="0.9" diameter="1.27"/>
<text x="-24.65" y="-1.75" size="0.3048" layer="21" font="vector">1</text>
<text x="-24.62" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-18.27" y="2.54" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-24.25" y1="-1.25" x2="-23.75" y2="-0.75" layer="51"/>
<rectangle x1="-24.25" y1="0.75" x2="-23.75" y2="1.25" layer="51"/>
<rectangle x1="-22.25" y1="-1.25" x2="-21.75" y2="-0.75" layer="51"/>
<rectangle x1="-22.25" y1="0.75" x2="-21.75" y2="1.25" layer="51"/>
<rectangle x1="-20.25" y1="-1.25" x2="-19.75" y2="-0.75" layer="51"/>
<rectangle x1="-20.25" y1="0.75" x2="-19.75" y2="1.25" layer="51"/>
<rectangle x1="-18.25" y1="-1.25" x2="-17.75" y2="-0.75" layer="51"/>
<rectangle x1="-18.25" y1="0.75" x2="-17.75" y2="1.25" layer="51"/>
<rectangle x1="-16.25" y1="-1.25" x2="-15.75" y2="-0.75" layer="51"/>
<rectangle x1="-16.25" y1="0.75" x2="-15.75" y2="1.25" layer="51"/>
<rectangle x1="-14.25" y1="-1.25" x2="-13.75" y2="-0.75" layer="51"/>
<rectangle x1="-14.25" y1="0.75" x2="-13.75" y2="1.25" layer="51"/>
<rectangle x1="-12.25" y1="-1.25" x2="-11.75" y2="-0.75" layer="51"/>
<rectangle x1="-12.25" y1="0.75" x2="-11.75" y2="1.25" layer="51"/>
<rectangle x1="-10.25" y1="-1.25" x2="-9.75" y2="-0.75" layer="51"/>
<rectangle x1="-10.25" y1="0.75" x2="-9.75" y2="1.25" layer="51"/>
<rectangle x1="-8.25" y1="-1.25" x2="-7.75" y2="-0.75" layer="51"/>
<rectangle x1="-8.25" y1="0.75" x2="-7.75" y2="1.25" layer="51"/>
<rectangle x1="-6.25" y1="-1.25" x2="-5.75" y2="-0.75" layer="51"/>
<rectangle x1="-6.25" y1="0.75" x2="-5.75" y2="1.25" layer="51"/>
<rectangle x1="-4.25" y1="-1.25" x2="-3.75" y2="-0.75" layer="51"/>
<rectangle x1="-4.25" y1="0.75" x2="-3.75" y2="1.25" layer="51"/>
<rectangle x1="-2.25" y1="-1.25" x2="-1.75" y2="-0.75" layer="51"/>
<rectangle x1="-2.25" y1="0.75" x2="-1.75" y2="1.25" layer="51"/>
<rectangle x1="-0.25" y1="-1.25" x2="0.25" y2="-0.75" layer="51"/>
<rectangle x1="-0.25" y1="0.75" x2="0.25" y2="1.25" layer="51"/>
<rectangle x1="1.75" y1="-1.25" x2="2.25" y2="-0.75" layer="51"/>
<rectangle x1="1.75" y1="0.75" x2="2.25" y2="1.25" layer="51"/>
<rectangle x1="3.75" y1="-1.25" x2="4.25" y2="-0.75" layer="51"/>
<rectangle x1="3.75" y1="0.75" x2="4.25" y2="1.25" layer="51"/>
<rectangle x1="5.75" y1="-1.25" x2="6.25" y2="-0.75" layer="51"/>
<rectangle x1="5.75" y1="0.75" x2="6.25" y2="1.25" layer="51"/>
<rectangle x1="7.75" y1="-1.25" x2="8.25" y2="-0.75" layer="51"/>
<rectangle x1="7.75" y1="0.75" x2="8.25" y2="1.25" layer="51"/>
<rectangle x1="9.75" y1="-1.25" x2="10.25" y2="-0.75" layer="51"/>
<rectangle x1="9.75" y1="0.75" x2="10.25" y2="1.25" layer="51"/>
<rectangle x1="11.75" y1="-1.25" x2="12.25" y2="-0.75" layer="51"/>
<rectangle x1="11.75" y1="0.75" x2="12.25" y2="1.25" layer="51"/>
<rectangle x1="13.75" y1="-1.25" x2="14.25" y2="-0.75" layer="51"/>
<rectangle x1="13.75" y1="0.75" x2="14.25" y2="1.25" layer="51"/>
<rectangle x1="15.75" y1="-1.25" x2="16.25" y2="-0.75" layer="51"/>
<rectangle x1="15.75" y1="0.75" x2="16.25" y2="1.25" layer="51"/>
<rectangle x1="17.75" y1="-1.25" x2="18.25" y2="-0.75" layer="51"/>
<rectangle x1="17.75" y1="0.75" x2="18.25" y2="1.25" layer="51"/>
<rectangle x1="19.75" y1="-1.25" x2="20.25" y2="-0.75" layer="51"/>
<rectangle x1="19.75" y1="0.75" x2="20.25" y2="1.25" layer="51"/>
<rectangle x1="21.75" y1="-1.25" x2="22.25" y2="-0.75" layer="51"/>
<rectangle x1="21.75" y1="0.75" x2="22.25" y2="1.25" layer="51"/>
<rectangle x1="23.75" y1="-1.25" x2="24.25" y2="-0.75" layer="51"/>
<rectangle x1="23.75" y1="0.75" x2="24.25" y2="1.25" layer="51"/>
<wire x1="-24" y1="1" x2="-24" y2="-6" width="0.55" layer="51"/>
<wire x1="-22" y1="1" x2="-22" y2="-6" width="0.55" layer="51"/>
<wire x1="-20" y1="1" x2="-20" y2="-6" width="0.55" layer="51"/>
<wire x1="-18" y1="1" x2="-18" y2="-6" width="0.55" layer="51"/>
<wire x1="-16" y1="1" x2="-16" y2="-6" width="0.55" layer="51"/>
<wire x1="-14" y1="1" x2="-14" y2="-6" width="0.55" layer="51"/>
<wire x1="-12" y1="1" x2="-12" y2="-6" width="0.55" layer="51"/>
<wire x1="-10" y1="1" x2="-10" y2="-6" width="0.55" layer="51"/>
<wire x1="-8" y1="1" x2="-8" y2="-6" width="0.55" layer="51"/>
<wire x1="-6" y1="1" x2="-6" y2="-6" width="0.55" layer="51"/>
<wire x1="-4" y1="1" x2="-4" y2="-6" width="0.55" layer="51"/>
<wire x1="-2" y1="1" x2="-2" y2="-6" width="0.55" layer="51"/>
<wire x1="0" y1="1" x2="0" y2="-6" width="0.55" layer="51"/>
<wire x1="2" y1="1" x2="2" y2="-6" width="0.55" layer="51"/>
<wire x1="4" y1="1" x2="4" y2="-6" width="0.55" layer="51"/>
<wire x1="6" y1="1" x2="6" y2="-6" width="0.55" layer="51"/>
<wire x1="8" y1="1" x2="8" y2="-6" width="0.55" layer="51"/>
<wire x1="10" y1="1" x2="10" y2="-6" width="0.55" layer="51"/>
<wire x1="12" y1="1" x2="12" y2="-6" width="0.55" layer="51"/>
<wire x1="14" y1="1" x2="14" y2="-6" width="0.55" layer="51"/>
<wire x1="16" y1="1" x2="16" y2="-6" width="0.55" layer="51"/>
<wire x1="18" y1="1" x2="18" y2="-6" width="0.55" layer="51"/>
<wire x1="20" y1="1" x2="20" y2="-6" width="0.55" layer="51"/>
<wire x1="22" y1="1" x2="22" y2="-6" width="0.55" layer="51"/>
<wire x1="24" y1="1" x2="24" y2="-6" width="0.55" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="MV" library_version="1">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<text x="-0.762" y="1.397" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
<symbol name="M" library_version="1">
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<text x="2.54" y="-0.762" size="1.524" layer="95">&gt;NAME</text>
<pin name="S" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="332-50" prefix="X" library_version="1">
<description>&lt;b&gt;50 Pin - 2mm Dual Row&lt;/b&gt;&lt;p&gt;
Source: www.mpe-connector.de / garry_shortform_2012.pdf</description>
<gates>
<gate name="-1" symbol="MV" x="-10.16" y="30.48" addlevel="always"/>
<gate name="-2" symbol="MV" x="10.16" y="30.48" addlevel="always"/>
<gate name="-3" symbol="M" x="-10.16" y="27.94" addlevel="always"/>
<gate name="-4" symbol="M" x="10.16" y="27.94" addlevel="always"/>
<gate name="-5" symbol="M" x="-10.16" y="25.4" addlevel="always"/>
<gate name="-6" symbol="M" x="10.16" y="25.4" addlevel="always"/>
<gate name="-7" symbol="M" x="-10.16" y="22.86" addlevel="always"/>
<gate name="-8" symbol="M" x="10.16" y="22.86" addlevel="always"/>
<gate name="-9" symbol="M" x="-10.16" y="20.32" addlevel="always"/>
<gate name="-10" symbol="M" x="10.16" y="20.32" addlevel="always"/>
<gate name="-11" symbol="M" x="-10.16" y="17.78" addlevel="always"/>
<gate name="-12" symbol="M" x="10.16" y="17.78" addlevel="always"/>
<gate name="-13" symbol="M" x="-10.16" y="15.24" addlevel="always"/>
<gate name="-14" symbol="M" x="10.16" y="15.24" addlevel="always"/>
<gate name="-15" symbol="M" x="-10.16" y="12.7" addlevel="always"/>
<gate name="-16" symbol="M" x="10.16" y="12.7" addlevel="always"/>
<gate name="-17" symbol="M" x="-10.16" y="10.16" addlevel="always"/>
<gate name="-18" symbol="M" x="10.16" y="10.16" addlevel="always"/>
<gate name="-19" symbol="M" x="-10.16" y="7.62" addlevel="always"/>
<gate name="-20" symbol="M" x="10.16" y="7.62" addlevel="always"/>
<gate name="-21" symbol="M" x="-10.16" y="5.08" addlevel="always"/>
<gate name="-22" symbol="M" x="10.16" y="5.08" addlevel="always"/>
<gate name="-23" symbol="M" x="-10.16" y="2.54" addlevel="always"/>
<gate name="-24" symbol="M" x="10.16" y="2.54" addlevel="always"/>
<gate name="-25" symbol="M" x="-10.16" y="0" addlevel="always"/>
<gate name="-26" symbol="M" x="10.16" y="0" addlevel="always"/>
<gate name="-27" symbol="M" x="-10.16" y="-2.54" addlevel="always"/>
<gate name="-28" symbol="M" x="10.16" y="-2.54" addlevel="always"/>
<gate name="-29" symbol="M" x="-10.16" y="-5.08" addlevel="always"/>
<gate name="-30" symbol="M" x="10.16" y="-5.08" addlevel="always"/>
<gate name="-31" symbol="M" x="-10.16" y="-7.62" addlevel="always"/>
<gate name="-32" symbol="M" x="10.16" y="-7.62" addlevel="always"/>
<gate name="-33" symbol="M" x="-10.16" y="-10.16" addlevel="always"/>
<gate name="-34" symbol="M" x="10.16" y="-10.16" addlevel="always"/>
<gate name="-35" symbol="M" x="-10.16" y="-12.7" addlevel="always"/>
<gate name="-36" symbol="M" x="10.16" y="-12.7" addlevel="always"/>
<gate name="-37" symbol="M" x="-10.16" y="-15.24" addlevel="always"/>
<gate name="-38" symbol="M" x="10.16" y="-15.24" addlevel="always"/>
<gate name="-39" symbol="M" x="-10.16" y="-17.78" addlevel="always"/>
<gate name="-40" symbol="M" x="10.16" y="-17.78" addlevel="always"/>
<gate name="-41" symbol="M" x="-10.16" y="-20.32" addlevel="always"/>
<gate name="-42" symbol="M" x="10.16" y="-20.32" addlevel="always"/>
<gate name="-43" symbol="M" x="-10.16" y="-22.86" addlevel="always"/>
<gate name="-44" symbol="M" x="10.16" y="-22.86" addlevel="always"/>
<gate name="-45" symbol="M" x="-10.16" y="-25.4" addlevel="always"/>
<gate name="-46" symbol="M" x="10.16" y="-25.4" addlevel="always"/>
<gate name="-47" symbol="M" x="-10.16" y="-27.94" addlevel="always"/>
<gate name="-48" symbol="M" x="10.16" y="-27.94" addlevel="always"/>
<gate name="-49" symbol="M" x="-10.16" y="-30.48" addlevel="always"/>
<gate name="-50" symbol="M" x="10.16" y="-30.48" addlevel="always"/>
</gates>
<devices>
<device name="" package="332-50">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-10" pin="S" pad="10"/>
<connect gate="-11" pin="S" pad="11"/>
<connect gate="-12" pin="S" pad="12"/>
<connect gate="-13" pin="S" pad="13"/>
<connect gate="-14" pin="S" pad="14"/>
<connect gate="-15" pin="S" pad="15"/>
<connect gate="-16" pin="S" pad="16"/>
<connect gate="-17" pin="S" pad="17"/>
<connect gate="-18" pin="S" pad="18"/>
<connect gate="-19" pin="S" pad="19"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-20" pin="S" pad="20"/>
<connect gate="-21" pin="S" pad="21"/>
<connect gate="-22" pin="S" pad="22"/>
<connect gate="-23" pin="S" pad="23"/>
<connect gate="-24" pin="S" pad="24"/>
<connect gate="-25" pin="S" pad="25"/>
<connect gate="-26" pin="S" pad="26"/>
<connect gate="-27" pin="S" pad="27"/>
<connect gate="-28" pin="S" pad="28"/>
<connect gate="-29" pin="S" pad="29"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-30" pin="S" pad="30"/>
<connect gate="-31" pin="S" pad="31"/>
<connect gate="-32" pin="S" pad="32"/>
<connect gate="-33" pin="S" pad="33"/>
<connect gate="-34" pin="S" pad="34"/>
<connect gate="-35" pin="S" pad="35"/>
<connect gate="-36" pin="S" pad="36"/>
<connect gate="-37" pin="S" pad="37"/>
<connect gate="-38" pin="S" pad="38"/>
<connect gate="-39" pin="S" pad="39"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-40" pin="S" pad="40"/>
<connect gate="-41" pin="S" pad="41"/>
<connect gate="-42" pin="S" pad="42"/>
<connect gate="-43" pin="S" pad="43"/>
<connect gate="-44" pin="S" pad="44"/>
<connect gate="-45" pin="S" pad="45"/>
<connect gate="-46" pin="S" pad="46"/>
<connect gate="-47" pin="S" pad="47"/>
<connect gate="-48" pin="S" pad="48"/>
<connect gate="-49" pin="S" pad="49"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-50" pin="S" pad="50"/>
<connect gate="-6" pin="S" pad="6"/>
<connect gate="-7" pin="S" pad="7"/>
<connect gate="-8" pin="S" pad="8"/>
<connect gate="-9" pin="S" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="diode" urn="urn:adsk.eagle:library:210">
<description>&lt;b&gt;Diodes&lt;/b&gt;&lt;p&gt;
Based on the following sources:
&lt;ul&gt;
&lt;li&gt;Motorola : www.onsemi.com
&lt;li&gt;Fairchild : www.fairchildsemi.com
&lt;li&gt;Philips : www.semiconductors.com
&lt;li&gt;Vishay : www.vishay.de
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="P1-10" library_version="1">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
diameter 3 mm, horizontal, grid 10.16 mm</description>
<wire x1="-3.175" y1="-1.524" x2="3.175" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.524" x2="-3.175" y2="1.524" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.524" x2="3.175" y2="1.524" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.524" x2="-3.175" y2="-1.524" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.762" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.762" layer="51"/>
<pad name="C" x="-5.08" y="0" drill="1.1176" shape="long"/>
<pad name="A" x="5.08" y="0" drill="1.1176" shape="long"/>
<text x="-3.048" y="1.905" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.175" y="-3.048" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-2.794" y1="-1.524" x2="-2.032" y2="1.524" layer="21"/>
<rectangle x1="-3.937" y1="-0.381" x2="-3.175" y2="0.381" layer="21"/>
<rectangle x1="3.175" y1="-0.381" x2="3.937" y2="0.381" layer="21"/>
</package>
<package name="P2-15" library_version="1">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
diameter 5 mm, horizontal, grid 12.7 mm</description>
<wire x1="-4.826" y1="-2.54" x2="-4.826" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.826" y1="2.54" x2="4.826" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="2.54" x2="4.826" y2="2.54" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-2.54" x2="-4.826" y2="-2.54" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="0" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.1524" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0" y2="0" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0" x2="6.223" y2="0" width="1.27" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.223" y2="0" width="1.27" layer="51"/>
<pad name="C" x="-7.62" y="0" drill="1.4986" shape="long"/>
<pad name="A" x="7.62" y="0" drill="1.4986" shape="long"/>
<text x="-4.8006" y="2.8194" size="1.778" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.9022" y="-4.699" size="1.778" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="-3.429" y1="-2.54" x2="-2.921" y2="2.54" layer="21"/>
<rectangle x1="4.826" y1="-0.635" x2="5.969" y2="0.635" layer="21"/>
<rectangle x1="-5.969" y1="-0.635" x2="-4.826" y2="0.635" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="D" library_version="1">
<wire x1="-1.27" y1="-1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="-1.27" y2="1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="1.27" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="1.27" y2="-1.27" width="0.254" layer="94"/>
<text x="2.54" y="0.4826" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-2.3114" size="1.778" layer="96">&gt;VALUE</text>
<pin name="A" x="-2.54" y="0" visible="off" length="short" direction="pas"/>
<pin name="C" x="2.54" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<text x="-2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="2.54" y="0" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="BA157" prefix="D" library_version="1">
<description>&lt;B&gt;DIODE&lt;/B&gt;&lt;p&gt;
fast soft-recovery controlled avalanche rectifier</description>
<gates>
<gate name="1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="P1-10">
<connects>
<connect gate="1" pin="A" pad="A"/>
<connect gate="1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="BA296" prefix="D" library_version="1">
<description>&lt;B&gt;DIODE&lt;/B&gt;</description>
<gates>
<gate name="1" symbol="D" x="0" y="0"/>
</gates>
<devices>
<device name="" package="P2-15">
<connects>
<connect gate="1" pin="A" pad="A"/>
<connect gate="1" pin="C" pad="C"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="eagle-ltspice" urn="urn:adsk.eagle:library:217">
<description>Default symbols for import LTspice schematics&lt;p&gt;
2012-10-29 alf@cadsoft.de&lt;br&gt;</description>
<packages>
<package name="0204/7" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0204, grid 7.5 mm</description>
<wire x1="3.81" y1="0" x2="2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.921" y2="0" width="0.508" layer="51"/>
<wire x1="-2.54" y1="0.762" x2="-2.286" y2="1.016" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.286" y2="-1.016" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="-0.762" width="0.1524" layer="21" curve="90"/>
<wire x1="2.286" y1="1.016" x2="2.54" y2="0.762" width="0.1524" layer="21" curve="-90"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0.762" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="1.016" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="0.889" x2="-1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="-1.016" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.889" x2="-1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="0.889" x2="-1.778" y2="0.889" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.889" x2="-1.778" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="2.286" y1="1.016" x2="1.905" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-1.016" x2="1.905" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="2.54" y2="0.762" width="0.1524" layer="21"/>
<rectangle x1="2.54" y1="-0.254" x2="2.921" y2="0.254" layer="21"/>
<rectangle x1="-2.921" y1="-0.254" x2="-2.54" y2="0.254" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" shape="octagon"/>
<text x="-2.54" y="1.2954" size="0.9906" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.6256" y="-0.4826" size="0.9906" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="0207/10" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
type 0207, grid 10 mm</description>
<wire x1="5.08" y1="0" x2="4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-4.064" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.175" y1="0.889" x2="-2.921" y2="1.143" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-2.921" y2="-1.143" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="-1.143" x2="3.175" y2="-0.889" width="0.1524" layer="21" curve="90"/>
<wire x1="2.921" y1="1.143" x2="3.175" y2="0.889" width="0.1524" layer="21" curve="-90"/>
<wire x1="-3.175" y1="-0.889" x2="-3.175" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="1.143" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="1.016" x2="-2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="-2.921" y1="-1.143" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="-1.016" x2="-2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="1.016" x2="-2.413" y2="1.016" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="2.413" y1="-1.016" x2="-2.413" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="2.921" y1="1.143" x2="2.54" y2="1.143" width="0.1524" layer="21"/>
<wire x1="2.921" y1="-1.143" x2="2.54" y2="-1.143" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-0.889" x2="3.175" y2="0.889" width="0.1524" layer="21"/>
<rectangle x1="3.175" y1="-0.3048" x2="4.0386" y2="0.3048" layer="21"/>
<rectangle x1="-4.0386" y1="-0.3048" x2="-3.175" y2="0.3048" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" shape="octagon"/>
<text x="-3.048" y="1.524" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.2606" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="R0201" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt; chip&lt;p&gt;
Source: http://www.vishay.com/docs/20008/dcrcw.pdf</description>
<rectangle x1="-0.3" y1="-0.15" x2="-0.15" y2="0.15" layer="51"/>
<rectangle x1="0.15" y1="-0.15" x2="0.3" y2="0.15" layer="51"/>
<rectangle x1="-0.15" y1="-0.15" x2="0.15" y2="0.15" layer="21"/>
<smd name="1" x="-0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<smd name="2" x="0.255" y="0" dx="0.28" dy="0.43" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0402" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0603" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.432" y1="-0.356" x2="0.432" y2="-0.356" width="0.1524" layer="51"/>
<wire x1="0.432" y1="0.356" x2="-0.432" y2="0.356" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.983" x2="1.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.983" x2="1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.983" x2="-1.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.983" x2="-1.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4318" y1="-0.4318" x2="0.8382" y2="0.4318" layer="51"/>
<rectangle x1="-0.8382" y1="-0.4318" x2="-0.4318" y2="0.4318" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
<smd name="1" x="-0.85" y="0" dx="1" dy="1.1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1" dy="1.1" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R0805" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1999" y1="-0.5001" x2="0.1999" y2="0.5001" layer="35"/>
<smd name="1" x="-0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.95" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1005" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.245" y1="0.224" x2="0.245" y2="0.224" width="0.1524" layer="51"/>
<wire x1="0.245" y1="-0.224" x2="-0.245" y2="-0.224" width="0.1524" layer="51"/>
<wire x1="-1.473" y1="0.483" x2="1.473" y2="0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="0.483" x2="1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="1.473" y1="-0.483" x2="-1.473" y2="-0.483" width="0.0508" layer="39"/>
<wire x1="-1.473" y1="-0.483" x2="-1.473" y2="0.483" width="0.0508" layer="39"/>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.2951" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.2951" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
<smd name="1" x="-0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<smd name="2" x="0.65" y="0" dx="0.7" dy="0.9" layer="1"/>
<text x="-0.635" y="0.635" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-1.905" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1206" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="0.9525" y1="-0.8128" x2="-0.9652" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.9525" y1="0.8128" x2="-0.9652" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="-1.6891" y1="-0.8763" x2="-0.9525" y2="0.8763" layer="51"/>
<rectangle x1="0.9525" y1="-0.8763" x2="1.6891" y2="0.8763" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<smd name="1" x="-1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<smd name="2" x="1.422" y="0" dx="1.6" dy="1.803" layer="1"/>
<text x="-1.27" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.27" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1210" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-0.8999" x2="0.3" y2="0.8999" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R1218" library_version="1">
<description>&lt;b&gt;CRCW1218 Thick Film, Rectangular Chip Resistors&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com .. dcrcw.pdf</description>
<wire x1="-0.913" y1="-2.219" x2="0.939" y2="-2.219" width="0.1524" layer="51"/>
<wire x1="0.913" y1="2.219" x2="-0.939" y2="2.219" width="0.1524" layer="51"/>
<rectangle x1="-1.651" y1="-2.3" x2="-0.9009" y2="2.3" layer="51"/>
<rectangle x1="0.9144" y1="-2.3" x2="1.6645" y2="2.3" layer="51"/>
<smd name="1" x="-1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<smd name="2" x="1.475" y="0" dx="1.05" dy="4.9" layer="1"/>
<text x="-2.54" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2010" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2012" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.41" y1="0.635" x2="0.41" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-0.41" y1="-0.635" x2="0.41" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-1.973" y1="0.983" x2="1.973" y2="0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="0.983" x2="1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="1.973" y1="-0.983" x2="-1.973" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-1.973" y1="-0.983" x2="-1.973" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="0.4064" y1="-0.6985" x2="1.0564" y2="0.7015" layer="51"/>
<rectangle x1="-1.0668" y1="-0.6985" x2="-0.4168" y2="0.7015" layer="51"/>
<rectangle x1="-0.1001" y1="-0.5999" x2="0.1001" y2="0.5999" layer="35"/>
<smd name="1" x="-0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.3" dy="1.5" layer="1"/>
<text x="-0.635" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-0.635" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R2512" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<smd name="2" x="2.8" y="0" dx="1.8" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R3216" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="0.8" x2="0.888" y2="0.8" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-0.8" x2="0.888" y2="-0.8" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="0.983" x2="2.473" y2="0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="0.983" x2="2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-0.983" x2="-2.473" y2="-0.983" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-0.983" x2="-2.473" y2="0.983" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-0.8763" x2="-0.9009" y2="0.8738" layer="51"/>
<rectangle x1="0.889" y1="-0.8763" x2="1.6391" y2="0.8738" layer="51"/>
<rectangle x1="-0.3" y1="-0.7" x2="0.3" y2="0.7" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="-1.905" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="-1.905" y="-2.54" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R3225" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-0.913" y1="1.219" x2="0.939" y2="1.219" width="0.1524" layer="51"/>
<wire x1="-0.913" y1="-1.219" x2="0.939" y2="-1.219" width="0.1524" layer="51"/>
<wire x1="-2.473" y1="1.483" x2="2.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="1.483" x2="2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="2.473" y1="-1.483" x2="-2.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-2.473" y1="-1.483" x2="-2.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-1.651" y1="-1.3081" x2="-0.9009" y2="1.2918" layer="51"/>
<rectangle x1="0.9144" y1="-1.3081" x2="1.6645" y2="1.2918" layer="51"/>
<rectangle x1="-0.3" y1="-1" x2="0.3" y2="1" layer="35"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="2.7" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R4527" library_version="1">
<description>&lt;b&gt;Package 4527&lt;/b&gt;&lt;p&gt;
Source: http://www.vishay.com/docs/31059/wsrhigh.pdf</description>
<wire x1="-5.675" y1="-3.375" x2="5.65" y2="-3.375" width="0.2032" layer="21"/>
<wire x1="5.65" y1="-3.375" x2="5.65" y2="3.375" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.375" x2="-5.675" y2="3.375" width="0.2032" layer="21"/>
<wire x1="-5.675" y1="3.375" x2="-5.675" y2="-3.375" width="0.2032" layer="51"/>
<smd name="1" x="-4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<smd name="2" x="4.575" y="0" dx="3.94" dy="5.84" layer="1"/>
<text x="-5.715" y="3.81" size="1.27" layer="25">&gt;NAME</text>
<text x="-5.715" y="-5.08" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R5025" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<wire x1="-1.662" y1="1.245" x2="1.662" y2="1.245" width="0.1524" layer="51"/>
<wire x1="-1.637" y1="-1.245" x2="1.687" y2="-1.245" width="0.1524" layer="51"/>
<wire x1="-3.473" y1="1.483" x2="3.473" y2="1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="1.483" x2="3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="3.473" y1="-1.483" x2="-3.473" y2="-1.483" width="0.0508" layer="39"/>
<wire x1="-3.473" y1="-1.483" x2="-3.473" y2="1.483" width="0.0508" layer="39"/>
<rectangle x1="-2.4892" y1="-1.3208" x2="-1.6393" y2="1.3292" layer="51"/>
<rectangle x1="1.651" y1="-1.3208" x2="2.5009" y2="1.3292" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<smd name="2" x="2.2" y="0" dx="1.8" dy="2.7" layer="1"/>
<text x="-3.175" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
<package name="R6332" library_version="1">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;&lt;p&gt;
Source: http://download.siliconexpert.com/pdfs/2005/02/24/Semi_Ap/2/VSH/Resistor/dcrcwfre.pdf</description>
<wire x1="-2.362" y1="1.473" x2="2.387" y2="1.473" width="0.1524" layer="51"/>
<wire x1="-2.362" y1="-1.473" x2="2.387" y2="-1.473" width="0.1524" layer="51"/>
<wire x1="-3.973" y1="1.983" x2="3.973" y2="1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="1.983" x2="3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="3.973" y1="-1.983" x2="-3.973" y2="-1.983" width="0.0508" layer="39"/>
<wire x1="-3.973" y1="-1.983" x2="-3.973" y2="1.983" width="0.0508" layer="39"/>
<rectangle x1="-3.2004" y1="-1.5494" x2="-2.3505" y2="1.5507" layer="51"/>
<rectangle x1="2.3622" y1="-1.5494" x2="3.2121" y2="1.5507" layer="51"/>
<rectangle x1="-0.5001" y1="-1" x2="0.5001" y2="1" layer="35"/>
<smd name="1" x="-3.1" y="0" dx="1" dy="3.2" layer="1"/>
<smd name="2" x="3.1" y="0" dx="1" dy="3.2" layer="1"/>
<text x="-2.54" y="1.905" size="1.27" layer="25">&gt;NAME</text>
<text x="-2.54" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="R" library_version="1">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<text x="-3.81" y="1.4986" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-3.302" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="0" size="0.4064" layer="99" align="center">SpiceOrder 1</text>
<text x="5.08" y="0" size="0.4064" layer="99" align="center">SpiceOrder 2</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" prefix="R" uservalue="yes" library_version="1">
<description>&lt;B&gt;RESISTOR&lt;/B&gt;, European symbol</description>
<gates>
<gate name="G$1" symbol="R" x="0" y="0"/>
</gates>
<devices>
<device name="0204/7" package="0204/7">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="0207/10" package="0207/10">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0201" package="R0201">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0402" package="R0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R0603" package="R0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="" package="R0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1005" package="R1005">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1206" package="R1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1210" package="R1210">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R1218" package="R1218">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2010" package="R2010">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2012" package="R2012">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R2512" package="R2512">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3216" package="R3216">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R3225" package="R3225">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R4527" package="R4527">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R5025" package="R5025">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
<device name="R6332" package="R6332">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SPICEMODEL" value="NONE" constant="no"/>
<attribute name="SPICEPREFIX" value="R" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-wago-500" urn="urn:adsk.eagle:library:195">
<description>&lt;b&gt;Wago Screw Clamps&lt;/b&gt;&lt;p&gt;
Grid 5.00 mm&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="W237-102" library_version="1">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<wire x1="-3.491" y1="-2.286" x2="-1.484" y2="-0.279" width="0.254" layer="51"/>
<wire x1="1.488" y1="-2.261" x2="3.469" y2="-0.254" width="0.254" layer="51"/>
<wire x1="-4.989" y1="-5.461" x2="4.993" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.734" x2="4.993" y2="3.531" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.734" x2="-4.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-5.461" x2="-4.989" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-3.073" x2="-3.389" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-3.389" y1="-3.073" x2="-1.611" y2="-3.073" width="0.1524" layer="51"/>
<wire x1="-1.611" y1="-3.073" x2="1.615" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="3.393" y1="-3.073" x2="4.993" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="-3.073" x2="-4.989" y2="3.531" width="0.1524" layer="21"/>
<wire x1="4.993" y1="-3.073" x2="4.993" y2="-5.461" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.531" x2="4.993" y2="3.531" width="0.1524" layer="21"/>
<wire x1="-4.989" y1="3.531" x2="-4.989" y2="3.734" width="0.1524" layer="21"/>
<wire x1="4.993" y1="3.531" x2="4.993" y2="-3.073" width="0.1524" layer="21"/>
<wire x1="1.615" y1="-3.073" x2="3.393" y2="-3.073" width="0.1524" layer="51"/>
<circle x="-2.5" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-2.5" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<circle x="2.5038" y="-1.27" radius="1.4986" width="0.1524" layer="51"/>
<circle x="2.5038" y="2.2098" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-2.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="2.5" y="-1.27" drill="1.1938" shape="long" rot="R90"/>
<text x="-5.04" y="-7.62" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.8462" y="-5.0038" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-4.532" y="0.635" size="1.27" layer="21" ratio="10">1</text>
<text x="0.421" y="0.635" size="1.27" layer="21" ratio="10">2</text>
</package>
<package name="W237-103" library_version="1">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<wire x1="4.093" y1="-2.255" x2="5.897" y2="-0.299" width="0.254" layer="51"/>
<wire x1="-0.911" y1="-2.331" x2="0.994" y2="-0.299" width="0.254" layer="51"/>
<wire x1="-5.991" y1="-2.306" x2="-3.984" y2="-0.299" width="0.254" layer="51"/>
<wire x1="-7.489" y1="-5.481" x2="7.497" y2="-5.481" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.714" x2="7.497" y2="3.511" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.714" x2="-7.489" y2="3.714" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="-5.481" x2="-7.489" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="-3.093" x2="-5.889" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-5.889" y1="-3.093" x2="-4.111" y2="-3.093" width="0.1524" layer="51"/>
<wire x1="-4.111" y1="-3.093" x2="-0.885" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="0.893" y1="-3.093" x2="4.119" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="5.897" y1="-3.093" x2="7.497" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="-3.093" x2="-7.489" y2="3.511" width="0.1524" layer="21"/>
<wire x1="7.497" y1="-3.093" x2="7.497" y2="-5.481" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.511" x2="-7.489" y2="3.511" width="0.1524" layer="21"/>
<wire x1="7.497" y1="3.511" x2="7.497" y2="-3.093" width="0.1524" layer="21"/>
<wire x1="-7.489" y1="3.511" x2="-7.489" y2="3.714" width="0.1524" layer="21"/>
<wire x1="-0.885" y1="-3.093" x2="0.893" y2="-3.093" width="0.1524" layer="51"/>
<wire x1="4.119" y1="-3.093" x2="5.897" y2="-3.093" width="0.1524" layer="51"/>
<circle x="-5" y="-1.29" radius="1.4986" width="0.1524" layer="51"/>
<circle x="5.0076" y="-1.29" radius="1.4986" width="0.1524" layer="51"/>
<circle x="-5" y="2.1898" radius="0.508" width="0.1524" layer="21"/>
<circle x="5.0076" y="2.1898" radius="0.508" width="0.1524" layer="21"/>
<circle x="0.0038" y="-1.29" radius="1.4986" width="0.1524" layer="51"/>
<circle x="0.0038" y="2.1898" radius="0.508" width="0.1524" layer="21"/>
<pad name="1" x="-5" y="-1.29" drill="1.1938" shape="long" rot="R90"/>
<pad name="2" x="0" y="-1.29" drill="1.1938" shape="long" rot="R90"/>
<pad name="3" x="5" y="-1.29" drill="1.1938" shape="long" rot="R90"/>
<text x="-6.905" y="0.615" size="1.27" layer="51" ratio="10">1</text>
<text x="-1.8504" y="0.5642" size="1.27" layer="51" ratio="10">2</text>
<text x="3.1534" y="0.615" size="1.27" layer="51" ratio="10">3</text>
<text x="-5.3048" y="-4.9476" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="-5.6858" y="-7.4622" size="1.27" layer="25" ratio="10">&gt;NAME</text>
</package>
</packages>
<symbols>
<symbol name="KL" library_version="1">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="0" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="KL+V" library_version="1">
<circle x="1.27" y="0" radius="1.27" width="0.254" layer="94"/>
<text x="-2.54" y="-3.683" size="1.778" layer="96">&gt;VALUE</text>
<text x="0" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="KL" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="W237-102" prefix="X" uservalue="yes" library_version="1">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KL+V" x="0" y="0" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-102">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="237-102" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="70K9898" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="W237-103" prefix="X" uservalue="yes" library_version="1">
<description>&lt;b&gt;WAGO SCREW CLAMP&lt;/b&gt;</description>
<gates>
<gate name="-1" symbol="KL" x="0" y="5.08" addlevel="always"/>
<gate name="-2" symbol="KL" x="0" y="0" addlevel="always"/>
<gate name="-3" symbol="KL+V" x="0" y="-5.08" addlevel="always"/>
</gates>
<devices>
<device name="" package="W237-103">
<connects>
<connect gate="-1" pin="KL" pad="1"/>
<connect gate="-2" pin="KL" pad="2"/>
<connect gate="-3" pin="KL" pad="3"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="237-103" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="18M7116" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="X1" library="con-garry" library_urn="urn:adsk.eagle:library:147" deviceset="332-50" device=""/>
<part name="X2" library="con-garry" library_urn="urn:adsk.eagle:library:147" deviceset="332-50" device=""/>
<part name="TURN_INDICATOR_1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R1" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="DAYTIME_RUNNING_LIGHT_1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R2" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="TURN_INDICATOR_2" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R3" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="DAYTIME_RUNNING_LIGHT_2" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R4" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="TURN_INDICATOR_3" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R5" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="DAYTIME_RUNNING_LIGHT_3" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R6" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="TURN_INDICATOR_4" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R7" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="DAYTIME_RUNNING_LIGHT_4" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R8" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="TURN_INDICATOR_5" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R9" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="DAYTIME_RUNNING_LIGHT_5" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R10" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="LOW_BEAM_1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R11" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="LOW_BEAM_2" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R12" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="LOW_BEAM_3" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R13" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="LOW_BEAM_4" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R14" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="LOW_BEAM_5" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R15" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="HIGH_BEAM_1" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R16" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="HIGH_BEAM_2" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R17" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="HIGH_BEAM_3" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R18" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="HIGH_BEAM_4" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R19" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="HIGH_BEAM_5" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R20" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="DAYTIME_RUNNING_LIGHT_6" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R21" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="DAYTIME_RUNNING_LIGHT_7" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA157" device=""/>
<part name="R22" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="BUTTON1" library="con-wago-500" library_urn="urn:adsk.eagle:library:195" deviceset="W237-102" device=""/>
<part name="BUTTON2" library="con-wago-500" library_urn="urn:adsk.eagle:library:195" deviceset="W237-102" device=""/>
<part name="BUTTON3" library="con-wago-500" library_urn="urn:adsk.eagle:library:195" deviceset="W237-102" device=""/>
<part name="BUTTON4" library="con-wago-500" library_urn="urn:adsk.eagle:library:195" deviceset="W237-102" device=""/>
<part name="LIGHT_SENSOR" library="con-wago-500" library_urn="urn:adsk.eagle:library:195" deviceset="W237-103" device=""/>
<part name="R23" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="330"/>
<part name="IR_RECIEVER" library="diode" library_urn="urn:adsk.eagle:library:210" deviceset="BA296" device=""/>
<part name="R24" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="4.7k"/>
<part name="R25" library="eagle-ltspice" library_urn="urn:adsk.eagle:library:217" deviceset="R" device="0204/7" value="2.2k"/>
</parts>
<sheets>
<sheet>
<plain>
<text x="150.02" y="251.7" size="1.778" layer="91" rot="R90">GND</text>
<text x="147.48" y="254.24" size="1.778" layer="91" rot="R90">VDD</text>
<text x="144.94" y="251.7" size="1.778" layer="91" rot="R90">GND</text>
<text x="142.4" y="254.24" size="1.778" layer="91" rot="R90">PC1</text>
<text x="139.86" y="251.7" size="1.778" layer="91" rot="R90">PC3</text>
<text x="137.32" y="254.24" size="1.778" layer="91" rot="R90">PA1</text>
<text x="134.78" y="251.7" size="1.778" layer="91" rot="R90">PA3</text>
<text x="132.24" y="254.24" size="1.778" layer="91" rot="R90">PA5</text>
<text x="129.7" y="251.7" size="1.778" layer="91" rot="R90">PA7</text>
<text x="127.16" y="254.24" size="1.778" layer="91" rot="R90">PC5</text>
<text x="124.62" y="251.7" size="1.778" layer="91" rot="R90">PB1</text>
<text x="122.08" y="254.24" size="1.778" layer="91" rot="R90">GND</text>
<text x="119.54" y="251.7" size="1.778" layer="91" rot="R90">PE7</text>
<text x="117" y="254.24" size="1.778" layer="91" rot="R90">PE9</text>
<text x="114.46" y="251.7" size="1.778" layer="91" rot="R90">PE11</text>
<text x="111.92" y="254.24" size="1.778" layer="91" rot="R90">PE13</text>
<text x="109.38" y="251.7" size="1.778" layer="91" rot="R90">PE15</text>
<text x="106.84" y="254.24" size="1.778" layer="91" rot="R90">PB11</text>
<text x="104.3" y="251.7" size="1.778" layer="91" rot="R90">PB13</text>
<text x="101.76" y="254.24" size="1.778" layer="91" rot="R90">PB15</text>
<text x="99.22" y="251.7" size="1.778" layer="91" rot="R90">PD9</text>
<text x="96.68" y="254.24" size="1.778" layer="91" rot="R90">PD11</text>
<text x="94.14" y="251.7" size="1.778" layer="91" rot="R90">PD13</text>
<text x="91.6" y="254.24" size="1.778" layer="91" rot="R90">PD15</text>
<text x="89.06" y="251.7" size="1.778" layer="91" rot="R90">GND</text>
<text x="150.02" y="221.22" size="1.778" layer="91" rot="R90">GND</text>
<text x="147.48" y="223.76" size="1.778" layer="91" rot="R90">VDD</text>
<text x="144.94" y="221.22" size="1.778" layer="91" rot="R90">NRST</text>
<text x="142.4" y="223.76" size="1.778" layer="91" rot="R90">PC0</text>
<text x="139.86" y="221.22" size="1.778" layer="91" rot="R90">PC2</text>
<text x="137.32" y="223.76" size="1.778" layer="91" rot="R90">PA0</text>
<text x="134.78" y="221.22" size="1.778" layer="91" rot="R90">PA2</text>
<text x="132.24" y="223.76" size="1.778" layer="91" rot="R90">PA4</text>
<text x="129.7" y="221.22" size="1.778" layer="91" rot="R90">PA6</text>
<text x="127.16" y="223.76" size="1.778" layer="91" rot="R90">PC4</text>
<text x="124.62" y="221.22" size="1.778" layer="91" rot="R90">PB0</text>
<text x="122.08" y="223.76" size="1.778" layer="91" rot="R90">PB2</text>
<text x="119.54" y="221.22" size="1.778" layer="91" rot="R90">PE8</text>
<text x="117" y="223.76" size="1.778" layer="91" rot="R90">PE10</text>
<text x="114.46" y="221.22" size="1.778" layer="91" rot="R90">PE12</text>
<text x="111.92" y="223.76" size="1.778" layer="91" rot="R90">PE14</text>
<text x="109.38" y="221.22" size="1.778" layer="91" rot="R90">PB10</text>
<text x="106.84" y="223.76" size="1.778" layer="91" rot="R90">PB12</text>
<text x="104.3" y="221.22" size="1.778" layer="91" rot="R90">PB14</text>
<text x="101.76" y="223.76" size="1.778" layer="91" rot="R90">PD8</text>
<text x="99.22" y="221.22" size="1.778" layer="91" rot="R90">PD10</text>
<text x="96.68" y="223.76" size="1.778" layer="91" rot="R90">PD12</text>
<text x="94.14" y="221.22" size="1.778" layer="91" rot="R90">PD14</text>
<text x="91.6" y="223.76" size="1.778" layer="91" rot="R90">NC</text>
<text x="89.06" y="221.22" size="1.778" layer="91" rot="R90">GND</text>
<text x="150.02" y="193.28" size="1.778" layer="91" rot="R90">GND</text>
<text x="147.48" y="195.82" size="1.778" layer="91" rot="R90">5V</text>
<text x="144.94" y="193.28" size="1.778" layer="91" rot="R90">3V</text>
<text x="142.4" y="195.82" size="1.778" layer="91" rot="R90">PH0</text>
<text x="139.86" y="193.28" size="1.778" layer="91" rot="R90">PC14</text>
<text x="137.32" y="195.82" size="1.778" layer="91" rot="R90">PE6</text>
<text x="134.78" y="193.28" size="1.778" layer="91" rot="R90">PE4</text>
<text x="132.24" y="195.82" size="1.778" layer="91" rot="R90">PE2</text>
<text x="129.7" y="193.28" size="1.778" layer="91" rot="R90">PE0</text>
<text x="127.16" y="195.82" size="1.778" layer="91" rot="R90">PB8</text>
<text x="124.62" y="193.28" size="1.778" layer="91" rot="R90">BOOT0</text>
<text x="122.08" y="195.82" size="1.778" layer="91" rot="R90">PB6</text>
<text x="119.54" y="193.28" size="1.778" layer="91" rot="R90">PB4</text>
<text x="117" y="195.82" size="1.778" layer="91" rot="R90">PD7</text>
<text x="114.46" y="193.28" size="1.778" layer="91" rot="R90">PD5</text>
<text x="111.92" y="195.82" size="1.778" layer="91" rot="R90">PD3</text>
<text x="109.38" y="193.28" size="1.778" layer="91" rot="R90">PD1</text>
<text x="106.84" y="195.82" size="1.778" layer="91" rot="R90">PC12</text>
<text x="104.3" y="193.28" size="1.778" layer="91" rot="R90">PC10</text>
<text x="101.76" y="195.82" size="1.778" layer="91" rot="R90">PA14</text>
<text x="99.22" y="193.28" size="1.778" layer="91" rot="R90">PA10</text>
<text x="96.68" y="195.82" size="1.778" layer="91" rot="R90">PA8</text>
<text x="94.14" y="193.28" size="1.778" layer="91" rot="R90">PC8</text>
<text x="91.6" y="195.82" size="1.778" layer="91" rot="R90">PC6</text>
<text x="89.06" y="193.28" size="1.778" layer="91" rot="R90">GND</text>
<text x="150.02" y="165.34" size="1.778" layer="91" rot="R90">GND</text>
<text x="147.48" y="167.88" size="1.778" layer="91" rot="R90">5V</text>
<text x="144.94" y="165.34" size="1.778" layer="91" rot="R90">3V</text>
<text x="142.4" y="167.88" size="1.778" layer="91" rot="R90">PH1</text>
<text x="139.86" y="165.34" size="1.778" layer="91" rot="R90">PC15</text>
<text x="137.32" y="167.88" size="1.778" layer="91" rot="R90">PC13</text>
<text x="134.78" y="165.34" size="1.778" layer="91" rot="R90">PE5</text>
<text x="132.24" y="167.88" size="1.778" layer="91" rot="R90">PE3</text>
<text x="129.7" y="165.34" size="1.778" layer="91" rot="R90">PE1</text>
<text x="127.16" y="167.88" size="1.778" layer="91" rot="R90">PB9</text>
<text x="124.62" y="165.34" size="1.778" layer="91" rot="R90">VDD</text>
<text x="122.08" y="167.88" size="1.778" layer="91" rot="R90">PB7</text>
<text x="119.54" y="165.34" size="1.778" layer="91" rot="R90">PB5</text>
<text x="117" y="167.88" size="1.778" layer="91" rot="R90">PB3</text>
<text x="114.46" y="165.34" size="1.778" layer="91" rot="R90">PD6</text>
<text x="111.92" y="167.88" size="1.778" layer="91" rot="R90">PD4</text>
<text x="109.38" y="165.34" size="1.778" layer="91" rot="R90">PD2</text>
<text x="106.84" y="167.88" size="1.778" layer="91" rot="R90">PD0</text>
<text x="104.3" y="165.34" size="1.778" layer="91" rot="R90">PC11</text>
<text x="101.76" y="167.88" size="1.778" layer="91" rot="R90">PA15</text>
<text x="99.22" y="165.34" size="1.778" layer="91" rot="R90">PA13</text>
<text x="96.68" y="167.88" size="1.778" layer="91" rot="R90">PA9</text>
<text x="94.14" y="165.34" size="1.778" layer="91" rot="R90">PC9</text>
<text x="91.6" y="167.88" size="1.778" layer="91" rot="R90">PC7</text>
<text x="89.06" y="165.34" size="1.778" layer="91" rot="R90">GND</text>
</plain>
<instances>
<instance part="X1" gate="-1" x="89.06" y="155.18" rot="R90"/>
<instance part="X1" gate="-2" x="89.06" y="183.12" rot="R90"/>
<instance part="X1" gate="-3" x="91.6" y="155.18" rot="R90"/>
<instance part="X1" gate="-4" x="91.6" y="183.12" rot="R90"/>
<instance part="X1" gate="-5" x="94.14" y="155.18" rot="R90"/>
<instance part="X1" gate="-6" x="94.14" y="183.12" rot="R90"/>
<instance part="X1" gate="-7" x="96.68" y="155.18" rot="R90"/>
<instance part="X1" gate="-8" x="96.68" y="183.12" rot="R90"/>
<instance part="X1" gate="-9" x="99.22" y="155.18" rot="R90"/>
<instance part="X1" gate="-10" x="99.22" y="183.12" rot="R90"/>
<instance part="X1" gate="-11" x="101.76" y="155.18" rot="R90"/>
<instance part="X1" gate="-12" x="101.76" y="183.12" rot="R90"/>
<instance part="X1" gate="-13" x="104.3" y="155.18" rot="R90"/>
<instance part="X1" gate="-14" x="104.3" y="183.12" rot="R90"/>
<instance part="X1" gate="-15" x="106.84" y="155.18" rot="R90"/>
<instance part="X1" gate="-16" x="106.84" y="183.12" rot="R90"/>
<instance part="X1" gate="-17" x="109.38" y="155.18" rot="R90"/>
<instance part="X1" gate="-18" x="109.38" y="183.12" rot="R90"/>
<instance part="X1" gate="-19" x="111.92" y="155.18" rot="R90"/>
<instance part="X1" gate="-20" x="111.92" y="183.12" rot="R90"/>
<instance part="X1" gate="-21" x="114.46" y="155.18" rot="R90"/>
<instance part="X1" gate="-22" x="114.46" y="183.12" rot="R90"/>
<instance part="X1" gate="-23" x="117" y="155.18" rot="R90"/>
<instance part="X1" gate="-24" x="117" y="183.12" rot="R90"/>
<instance part="X1" gate="-25" x="119.54" y="155.18" rot="R90"/>
<instance part="X1" gate="-26" x="119.54" y="183.12" rot="R90"/>
<instance part="X1" gate="-27" x="122.08" y="155.18" rot="R90"/>
<instance part="X1" gate="-28" x="122.08" y="183.12" rot="R90"/>
<instance part="X1" gate="-29" x="124.62" y="155.18" rot="R90"/>
<instance part="X1" gate="-30" x="124.62" y="183.12" rot="R90"/>
<instance part="X1" gate="-31" x="127.16" y="155.18" rot="R90"/>
<instance part="X1" gate="-32" x="127.16" y="183.12" rot="R90"/>
<instance part="X1" gate="-33" x="129.7" y="155.18" rot="R90"/>
<instance part="X1" gate="-34" x="129.7" y="183.12" rot="R90"/>
<instance part="X1" gate="-35" x="132.24" y="155.18" rot="R90"/>
<instance part="X1" gate="-36" x="132.24" y="183.12" rot="R90"/>
<instance part="X1" gate="-37" x="134.78" y="155.18" rot="R90"/>
<instance part="X1" gate="-38" x="134.78" y="183.12" rot="R90"/>
<instance part="X1" gate="-39" x="137.32" y="155.18" rot="R90"/>
<instance part="X1" gate="-40" x="137.32" y="183.12" rot="R90"/>
<instance part="X1" gate="-41" x="139.86" y="155.18" rot="R90"/>
<instance part="X1" gate="-42" x="139.86" y="183.12" rot="R90"/>
<instance part="X1" gate="-43" x="142.4" y="155.18" rot="R90"/>
<instance part="X1" gate="-44" x="142.4" y="183.12" rot="R90"/>
<instance part="X1" gate="-45" x="144.94" y="155.18" rot="R90"/>
<instance part="X1" gate="-46" x="144.94" y="183.12" rot="R90"/>
<instance part="X1" gate="-47" x="147.48" y="155.18" rot="R90"/>
<instance part="X1" gate="-48" x="147.48" y="183.12" rot="R90"/>
<instance part="X1" gate="-49" x="150.02" y="155.18" rot="R90"/>
<instance part="X1" gate="-50" x="150.02" y="183.12" rot="R90"/>
<instance part="X2" gate="-1" x="89.06" y="211.06" rot="R90"/>
<instance part="X2" gate="-2" x="89.06" y="241.54" rot="R90"/>
<instance part="X2" gate="-3" x="91.6" y="211.06" rot="R90"/>
<instance part="X2" gate="-4" x="91.6" y="241.54" rot="R90"/>
<instance part="X2" gate="-5" x="94.14" y="211.06" rot="R90"/>
<instance part="X2" gate="-6" x="94.14" y="241.54" rot="R90"/>
<instance part="X2" gate="-7" x="96.68" y="211.06" rot="R90"/>
<instance part="X2" gate="-8" x="96.68" y="241.54" rot="R90"/>
<instance part="X2" gate="-9" x="99.22" y="211.06" rot="R90"/>
<instance part="X2" gate="-10" x="99.22" y="241.54" rot="R90"/>
<instance part="X2" gate="-11" x="101.76" y="211.06" rot="R90"/>
<instance part="X2" gate="-12" x="101.76" y="241.54" rot="R90"/>
<instance part="X2" gate="-13" x="104.3" y="211.06" rot="R90"/>
<instance part="X2" gate="-14" x="104.3" y="241.54" rot="R90"/>
<instance part="X2" gate="-15" x="106.84" y="211.06" rot="R90"/>
<instance part="X2" gate="-16" x="106.84" y="241.54" rot="R90"/>
<instance part="X2" gate="-17" x="109.38" y="211.06" rot="R90"/>
<instance part="X2" gate="-18" x="109.38" y="241.54" rot="R90"/>
<instance part="X2" gate="-19" x="111.92" y="211.06" rot="R90"/>
<instance part="X2" gate="-20" x="111.92" y="241.54" rot="R90"/>
<instance part="X2" gate="-21" x="114.46" y="211.06" rot="R90"/>
<instance part="X2" gate="-22" x="114.46" y="241.54" rot="R90"/>
<instance part="X2" gate="-23" x="117" y="211.06" rot="R90"/>
<instance part="X2" gate="-24" x="117" y="241.54" rot="R90"/>
<instance part="X2" gate="-25" x="119.54" y="211.06" rot="R90"/>
<instance part="X2" gate="-26" x="119.54" y="241.54" rot="R90"/>
<instance part="X2" gate="-27" x="122.08" y="211.06" rot="R90"/>
<instance part="X2" gate="-28" x="122.08" y="241.54" rot="R90"/>
<instance part="X2" gate="-29" x="124.62" y="211.06" rot="R90"/>
<instance part="X2" gate="-30" x="124.62" y="241.54" rot="R90"/>
<instance part="X2" gate="-31" x="127.16" y="211.06" rot="R90"/>
<instance part="X2" gate="-32" x="127.16" y="241.54" rot="R90"/>
<instance part="X2" gate="-33" x="129.7" y="211.06" rot="R90"/>
<instance part="X2" gate="-34" x="129.7" y="241.54" rot="R90"/>
<instance part="X2" gate="-35" x="132.24" y="211.06" rot="R90"/>
<instance part="X2" gate="-36" x="132.24" y="241.54" rot="R90"/>
<instance part="X2" gate="-37" x="134.78" y="211.06" rot="R90"/>
<instance part="X2" gate="-38" x="134.78" y="241.54" rot="R90"/>
<instance part="X2" gate="-39" x="137.32" y="211.06" rot="R90"/>
<instance part="X2" gate="-40" x="137.32" y="241.54" rot="R90"/>
<instance part="X2" gate="-41" x="139.86" y="211.06" rot="R90"/>
<instance part="X2" gate="-42" x="139.86" y="241.54" rot="R90"/>
<instance part="X2" gate="-43" x="142.4" y="211.06" rot="R90"/>
<instance part="X2" gate="-44" x="142.4" y="241.54" rot="R90"/>
<instance part="X2" gate="-45" x="144.94" y="211.06" rot="R90"/>
<instance part="X2" gate="-46" x="144.94" y="241.54" rot="R90"/>
<instance part="X2" gate="-47" x="147.48" y="211.06" rot="R90"/>
<instance part="X2" gate="-48" x="147.48" y="241.54" rot="R90"/>
<instance part="X2" gate="-49" x="150.02" y="211.06" rot="R90"/>
<instance part="X2" gate="-50" x="150.02" y="241.54" rot="R90"/>
<instance part="TURN_INDICATOR_1" gate="1" x="40" y="-17.46" rot="R270"/>
<instance part="R1" gate="G$1" x="40" y="-2.22" rot="R90"/>
<instance part="DAYTIME_RUNNING_LIGHT_1" gate="1" x="50" y="-17.46" rot="R270"/>
<instance part="R2" gate="G$1" x="50" y="-2.22" rot="R90"/>
<instance part="TURN_INDICATOR_2" gate="1" x="80" y="-17.46" rot="R270"/>
<instance part="R3" gate="G$1" x="80" y="-2.22" rot="R90"/>
<instance part="DAYTIME_RUNNING_LIGHT_2" gate="1" x="90" y="-17.46" rot="R270"/>
<instance part="R4" gate="G$1" x="90" y="-2.22" rot="R90"/>
<instance part="TURN_INDICATOR_3" gate="1" x="120" y="-17.46" rot="R270"/>
<instance part="R5" gate="G$1" x="120" y="-2.22" rot="R90"/>
<instance part="DAYTIME_RUNNING_LIGHT_3" gate="1" x="130" y="-17.46" rot="R270"/>
<instance part="R6" gate="G$1" x="130" y="-2.22" rot="R90"/>
<instance part="TURN_INDICATOR_4" gate="1" x="145" y="12.54" rot="R270"/>
<instance part="R7" gate="G$1" x="145" y="27.78" rot="R90"/>
<instance part="DAYTIME_RUNNING_LIGHT_4" gate="1" x="155" y="12.54" rot="R270"/>
<instance part="R8" gate="G$1" x="155" y="27.78" rot="R90"/>
<instance part="TURN_INDICATOR_5" gate="1" x="165" y="52.54" rot="R270"/>
<instance part="R9" gate="G$1" x="165" y="67.78" rot="R90"/>
<instance part="DAYTIME_RUNNING_LIGHT_5" gate="1" x="175" y="52.54" rot="R270"/>
<instance part="R10" gate="G$1" x="175" y="67.78" rot="R90"/>
<instance part="LOW_BEAM_1" gate="1" x="35" y="27.54" rot="R270"/>
<instance part="R11" gate="G$1" x="35" y="42.78" rot="R90"/>
<instance part="LOW_BEAM_2" gate="1" x="45" y="52.54" rot="R270"/>
<instance part="R12" gate="G$1" x="45" y="67.78" rot="R90"/>
<instance part="LOW_BEAM_3" gate="1" x="55" y="27.54" rot="R270"/>
<instance part="R13" gate="G$1" x="55" y="42.78" rot="R90"/>
<instance part="LOW_BEAM_4" gate="1" x="35" y="62.54" rot="R270"/>
<instance part="R14" gate="G$1" x="35" y="77.78" rot="R90"/>
<instance part="LOW_BEAM_5" gate="1" x="55" y="62.54" rot="R270"/>
<instance part="R15" gate="G$1" x="55" y="77.78" rot="R90"/>
<instance part="HIGH_BEAM_1" gate="1" x="75" y="52.54" rot="R270"/>
<instance part="R16" gate="G$1" x="75" y="67.78" rot="R90"/>
<instance part="HIGH_BEAM_2" gate="1" x="90" y="52.54" rot="R270"/>
<instance part="R17" gate="G$1" x="90" y="67.78" rot="R90"/>
<instance part="HIGH_BEAM_3" gate="1" x="105" y="52.54" rot="R270"/>
<instance part="R18" gate="G$1" x="105" y="67.78" rot="R90"/>
<instance part="HIGH_BEAM_4" gate="1" x="120" y="52.54" rot="R270"/>
<instance part="R19" gate="G$1" x="120" y="67.78" rot="R90"/>
<instance part="HIGH_BEAM_5" gate="1" x="135" y="52.54" rot="R270"/>
<instance part="R20" gate="G$1" x="135" y="67.78" rot="R90"/>
<instance part="DAYTIME_RUNNING_LIGHT_6" gate="1" x="155" y="92.54" rot="R270"/>
<instance part="R21" gate="G$1" x="155" y="107.78" rot="R90"/>
<instance part="DAYTIME_RUNNING_LIGHT_7" gate="1" x="145" y="92.54" rot="R270"/>
<instance part="R22" gate="G$1" x="145" y="107.78" rot="R90"/>
<instance part="BUTTON1" gate="-1" x="59.92" y="110" rot="R90"/>
<instance part="BUTTON1" gate="-2" x="65" y="110" rot="R90"/>
<instance part="BUTTON2" gate="-1" x="74.92" y="110" rot="R90"/>
<instance part="BUTTON2" gate="-2" x="80" y="110" rot="R90"/>
<instance part="BUTTON3" gate="-1" x="89.92" y="110" rot="R90"/>
<instance part="BUTTON3" gate="-2" x="95" y="110" rot="R90"/>
<instance part="BUTTON4" gate="-1" x="104.92" y="110" rot="R90"/>
<instance part="BUTTON4" gate="-2" x="110" y="110" rot="R90"/>
<instance part="LIGHT_SENSOR" gate="-1" x="180" y="100.08"/>
<instance part="LIGHT_SENSOR" gate="-2" x="180" y="95"/>
<instance part="LIGHT_SENSOR" gate="-3" x="180" y="89.92"/>
<instance part="R23" gate="G$1" x="175" y="112.78" rot="R90"/>
<instance part="IR_RECIEVER" gate="1" x="175" y="-12.38" rot="R270"/>
<instance part="R24" gate="G$1" x="175" y="2.78" rot="R90"/>
<instance part="R25" gate="G$1" x="175" y="-37.22" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$4" class="0">
<segment>
<pinref part="TURN_INDICATOR_1" gate="1" pin="A"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="40" y1="-14.92" x2="40" y2="-7.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="DAYTIME_RUNNING_LIGHT_1" gate="1" pin="A"/>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="50" y1="-14.92" x2="50" y2="-7.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="TURN_INDICATOR_2" gate="1" pin="A"/>
<pinref part="R3" gate="G$1" pin="1"/>
<wire x1="80" y1="-14.92" x2="80" y2="-7.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="DAYTIME_RUNNING_LIGHT_2" gate="1" pin="A"/>
<pinref part="R4" gate="G$1" pin="1"/>
<wire x1="90" y1="-14.92" x2="90" y2="-7.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="TURN_INDICATOR_3" gate="1" pin="A"/>
<pinref part="R5" gate="G$1" pin="1"/>
<wire x1="120" y1="-14.92" x2="120" y2="-7.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="DAYTIME_RUNNING_LIGHT_3" gate="1" pin="A"/>
<pinref part="R6" gate="G$1" pin="1"/>
<wire x1="130" y1="-14.92" x2="130" y2="-7.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="TURN_INDICATOR_4" gate="1" pin="A"/>
<pinref part="R7" gate="G$1" pin="1"/>
<wire x1="145" y1="15.08" x2="145" y2="22.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="DAYTIME_RUNNING_LIGHT_4" gate="1" pin="A"/>
<pinref part="R8" gate="G$1" pin="1"/>
<wire x1="155" y1="15.08" x2="155" y2="22.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="TURN_INDICATOR_5" gate="1" pin="A"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="165" y1="55.08" x2="165" y2="62.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<pinref part="DAYTIME_RUNNING_LIGHT_5" gate="1" pin="A"/>
<pinref part="R10" gate="G$1" pin="1"/>
<wire x1="175" y1="55.08" x2="175" y2="62.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="LOW_BEAM_1" gate="1" pin="A"/>
<pinref part="R11" gate="G$1" pin="1"/>
<wire x1="35" y1="30.08" x2="35" y2="37.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="LOW_BEAM_2" gate="1" pin="A"/>
<pinref part="R12" gate="G$1" pin="1"/>
<wire x1="45" y1="55.08" x2="45" y2="62.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="LOW_BEAM_3" gate="1" pin="A"/>
<pinref part="R13" gate="G$1" pin="1"/>
<wire x1="55" y1="30.08" x2="55" y2="37.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="LOW_BEAM_4" gate="1" pin="A"/>
<pinref part="R14" gate="G$1" pin="1"/>
<wire x1="35" y1="65.08" x2="35" y2="72.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$15" class="0">
<segment>
<pinref part="LOW_BEAM_5" gate="1" pin="A"/>
<pinref part="R15" gate="G$1" pin="1"/>
<wire x1="55" y1="65.08" x2="55" y2="72.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$16" class="0">
<segment>
<pinref part="HIGH_BEAM_1" gate="1" pin="A"/>
<pinref part="R16" gate="G$1" pin="1"/>
<wire x1="75" y1="55.08" x2="75" y2="62.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$17" class="0">
<segment>
<pinref part="HIGH_BEAM_2" gate="1" pin="A"/>
<pinref part="R17" gate="G$1" pin="1"/>
<wire x1="90" y1="55.08" x2="90" y2="62.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="HIGH_BEAM_3" gate="1" pin="A"/>
<pinref part="R18" gate="G$1" pin="1"/>
<wire x1="105" y1="55.08" x2="105" y2="62.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$19" class="0">
<segment>
<pinref part="HIGH_BEAM_4" gate="1" pin="A"/>
<pinref part="R19" gate="G$1" pin="1"/>
<wire x1="120" y1="55.08" x2="120" y2="62.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$20" class="0">
<segment>
<pinref part="HIGH_BEAM_5" gate="1" pin="A"/>
<pinref part="R20" gate="G$1" pin="1"/>
<wire x1="135" y1="55.08" x2="135" y2="62.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$21" class="0">
<segment>
<pinref part="DAYTIME_RUNNING_LIGHT_6" gate="1" pin="A"/>
<pinref part="R21" gate="G$1" pin="1"/>
<wire x1="155" y1="95.08" x2="155" y2="102.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$22" class="0">
<segment>
<pinref part="DAYTIME_RUNNING_LIGHT_7" gate="1" pin="A"/>
<pinref part="R22" gate="G$1" pin="1"/>
<wire x1="145" y1="95.08" x2="145" y2="102.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$26" class="0">
<segment>
<wire x1="175" y1="-35" x2="175" y2="-30" width="0.1524" layer="91"/>
<pinref part="X1" gate="-23" pin="S"/>
<wire x1="175" y1="-30" x2="175" y2="-15" width="0.1524" layer="91"/>
<wire x1="117" y1="152.64" x2="117" y2="138" width="0.1524" layer="91"/>
<wire x1="117" y1="138" x2="173" y2="138" width="0.1524" layer="91"/>
<wire x1="173" y1="138" x2="173" y2="-30" width="0.1524" layer="91"/>
<wire x1="173" y1="-30" x2="175" y2="-30" width="0.1524" layer="91"/>
<junction x="175" y="-30"/>
</segment>
</net>
<net name="N$27" class="0">
<segment>
<wire x1="175" y1="-10" x2="175" y2="0" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$23" class="0">
<segment>
<pinref part="BUTTON1" gate="-1" pin="KL"/>
<wire x1="59.92" y1="115.08" x2="60" y2="115.08" width="0.1524" layer="91"/>
<wire x1="60" y1="115.08" x2="60" y2="150" width="0.1524" layer="91"/>
<pinref part="X1" gate="-37" pin="S"/>
<wire x1="60" y1="150" x2="134.78" y2="150" width="0.1524" layer="91"/>
<wire x1="134.78" y1="150" x2="134.78" y2="152.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$24" class="0">
<segment>
<pinref part="BUTTON2" gate="-1" pin="KL"/>
<wire x1="74.92" y1="115.08" x2="75" y2="115.08" width="0.1524" layer="91"/>
<wire x1="75" y1="115.08" x2="75" y2="149" width="0.1524" layer="91"/>
<wire x1="75" y1="149" x2="152" y2="149" width="0.1524" layer="91"/>
<wire x1="152" y1="149" x2="152" y2="179" width="0.1524" layer="91"/>
<pinref part="X1" gate="-40" pin="S"/>
<wire x1="152" y1="179" x2="137.32" y2="179" width="0.1524" layer="91"/>
<wire x1="137.32" y1="179" x2="137.32" y2="180.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$28" class="0">
<segment>
<pinref part="BUTTON3" gate="-1" pin="KL"/>
<wire x1="89.92" y1="115.08" x2="90" y2="115.08" width="0.1524" layer="91"/>
<wire x1="90" y1="115.08" x2="90" y2="148" width="0.1524" layer="91"/>
<wire x1="90" y1="148" x2="153" y2="148" width="0.1524" layer="91"/>
<wire x1="153" y1="148" x2="153" y2="208" width="0.1524" layer="91"/>
<pinref part="X2" gate="-21" pin="S"/>
<wire x1="153" y1="208" x2="114.46" y2="208" width="0.1524" layer="91"/>
<wire x1="114.46" y1="208" x2="114.46" y2="208.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$29" class="0">
<segment>
<pinref part="X2" gate="-20" pin="S"/>
<wire x1="111.92" y1="239" x2="112" y2="239" width="0.1524" layer="91"/>
<wire x1="112" y1="239" x2="112" y2="238" width="0.1524" layer="91"/>
<wire x1="112" y1="238" x2="154" y2="238" width="0.1524" layer="91"/>
<wire x1="154" y1="238" x2="154" y2="147" width="0.1524" layer="91"/>
<pinref part="BUTTON4" gate="-1" pin="KL"/>
<wire x1="154" y1="147" x2="104.92" y2="147" width="0.1524" layer="91"/>
<wire x1="104.92" y1="147" x2="104.92" y2="115.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$30" class="0">
<segment>
<pinref part="R16" gate="G$1" pin="2"/>
<wire x1="75" y1="72.86" x2="75" y2="87" width="0.1524" layer="91"/>
<wire x1="75" y1="87" x2="49" y2="87" width="0.1524" layer="91"/>
<wire x1="49" y1="87" x2="49" y2="178" width="0.1524" layer="91"/>
<pinref part="X1" gate="-34" pin="S"/>
<wire x1="49" y1="178" x2="129.7" y2="178" width="0.1524" layer="91"/>
<wire x1="129.7" y1="178" x2="129.7" y2="180.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$31" class="0">
<segment>
<pinref part="R17" gate="G$1" pin="2"/>
<wire x1="90" y1="72.86" x2="90" y2="88" width="0.1524" layer="91"/>
<wire x1="90" y1="88" x2="51" y2="88" width="0.1524" layer="91"/>
<wire x1="51" y1="88" x2="51" y2="151" width="0.1524" layer="91"/>
<pinref part="X1" gate="-33" pin="S"/>
<wire x1="51" y1="151" x2="129.7" y2="151" width="0.1524" layer="91"/>
<wire x1="129.7" y1="151" x2="129.7" y2="152.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$32" class="0">
<segment>
<pinref part="R18" gate="G$1" pin="2"/>
<wire x1="105" y1="72.86" x2="105" y2="89" width="0.1524" layer="91"/>
<wire x1="105" y1="89" x2="53" y2="89" width="0.1524" layer="91"/>
<wire x1="53" y1="89" x2="53" y2="176" width="0.1524" layer="91"/>
<pinref part="X1" gate="-36" pin="S"/>
<wire x1="53" y1="176" x2="132.24" y2="176" width="0.1524" layer="91"/>
<wire x1="132.24" y1="176" x2="132.24" y2="180.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$33" class="0">
<segment>
<pinref part="X1" gate="-35" pin="S"/>
<wire x1="132.24" y1="152.64" x2="132" y2="152.64" width="0.1524" layer="91"/>
<wire x1="132" y1="152.64" x2="132" y2="145" width="0.1524" layer="91"/>
<pinref part="R19" gate="G$1" pin="2"/>
<wire x1="132" y1="145" x2="120" y2="145" width="0.1524" layer="91"/>
<wire x1="120" y1="145" x2="120" y2="72.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$34" class="0">
<segment>
<pinref part="R20" gate="G$1" pin="2"/>
<wire x1="135" y1="72.86" x2="135" y2="91" width="0.1524" layer="91"/>
<wire x1="135" y1="91" x2="55" y2="91" width="0.1524" layer="91"/>
<wire x1="55" y1="91" x2="55" y2="174" width="0.1524" layer="91"/>
<pinref part="X1" gate="-38" pin="S"/>
<wire x1="55" y1="174" x2="134.78" y2="174" width="0.1524" layer="91"/>
<wire x1="134.78" y1="174" x2="134.78" y2="180.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$35" class="0">
<segment>
<pinref part="R13" gate="G$1" pin="2"/>
<wire x1="55" y1="47.86" x2="50" y2="47.86" width="0.1524" layer="91"/>
<wire x1="50" y1="47.86" x2="50" y2="85" width="0.1524" layer="91"/>
<wire x1="50" y1="85" x2="47" y2="85" width="0.1524" layer="91"/>
<wire x1="47" y1="85" x2="47" y2="236" width="0.1524" layer="91"/>
<pinref part="X2" gate="-26" pin="S"/>
<wire x1="47" y1="236" x2="119.54" y2="236" width="0.1524" layer="91"/>
<wire x1="119.54" y1="236" x2="119.54" y2="239" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$36" class="0">
<segment>
<pinref part="X2" gate="-25" pin="S"/>
<wire x1="119.54" y1="208.52" x2="120" y2="208.52" width="0.1524" layer="91"/>
<wire x1="120" y1="208.52" x2="120" y2="205" width="0.1524" layer="91"/>
<pinref part="R12" gate="G$1" pin="2"/>
<wire x1="120" y1="205" x2="45" y2="205" width="0.1524" layer="91"/>
<wire x1="45" y1="205" x2="45" y2="72.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$37" class="0">
<segment>
<pinref part="R15" gate="G$1" pin="2"/>
<wire x1="55" y1="82.86" x2="55" y2="235" width="0.1524" layer="91"/>
<pinref part="X2" gate="-24" pin="S"/>
<wire x1="55" y1="235" x2="117" y2="235" width="0.1524" layer="91"/>
<wire x1="117" y1="235" x2="117" y2="239" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$38" class="0">
<segment>
<pinref part="X2" gate="-23" pin="S"/>
<wire x1="117" y1="208.52" x2="117" y2="204" width="0.1524" layer="91"/>
<pinref part="R14" gate="G$1" pin="2"/>
<wire x1="117" y1="204" x2="35" y2="204" width="0.1524" layer="91"/>
<wire x1="35" y1="204" x2="35" y2="82.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$39" class="0">
<segment>
<pinref part="R11" gate="G$1" pin="2"/>
<wire x1="35" y1="47.86" x2="40" y2="47.86" width="0.1524" layer="91"/>
<wire x1="40" y1="47.86" x2="40" y2="234" width="0.1524" layer="91"/>
<pinref part="X2" gate="-22" pin="S"/>
<wire x1="40" y1="234" x2="114.46" y2="234" width="0.1524" layer="91"/>
<wire x1="114.46" y1="234" x2="114.46" y2="239" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$40" class="0">
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<wire x1="50" y1="2.86" x2="50" y2="177" width="0.1524" layer="91"/>
<pinref part="X1" gate="-20" pin="S"/>
<wire x1="50" y1="177" x2="111.92" y2="177" width="0.1524" layer="91"/>
<wire x1="111.92" y1="177" x2="111.92" y2="180.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$41" class="0">
<segment>
<pinref part="R4" gate="G$1" pin="2"/>
<wire x1="90" y1="2.86" x2="94" y2="2.86" width="0.1524" layer="91"/>
<wire x1="94" y1="2.86" x2="94" y2="147" width="0.1524" layer="91"/>
<pinref part="X1" gate="-19" pin="S"/>
<wire x1="94" y1="147" x2="111.92" y2="147" width="0.1524" layer="91"/>
<wire x1="111.92" y1="147" x2="111.92" y2="152.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$42" class="0">
<segment>
<pinref part="R6" gate="G$1" pin="2"/>
<wire x1="130" y1="2.86" x2="130" y2="143" width="0.1524" layer="91"/>
<pinref part="X1" gate="-22" pin="S"/>
<wire x1="114.46" y1="180.58" x2="115" y2="180.58" width="0.1524" layer="91"/>
<wire x1="115" y1="180.58" x2="115" y2="179" width="0.1524" layer="91"/>
<wire x1="115" y1="179" x2="155" y2="179" width="0.1524" layer="91"/>
<wire x1="155" y1="179" x2="155" y2="145" width="0.1524" layer="91"/>
<wire x1="155" y1="145" x2="133" y2="145" width="0.1524" layer="91"/>
<wire x1="133" y1="145" x2="133" y2="143" width="0.1524" layer="91"/>
<wire x1="133" y1="143" x2="131" y2="143" width="0.1524" layer="91"/>
<wire x1="131" y1="143" x2="131" y2="144" width="0.1524" layer="91"/>
<wire x1="131" y1="144" x2="130" y2="144" width="0.1524" layer="91"/>
<wire x1="130" y1="144" x2="130" y2="143" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$44" class="0">
<segment>
<pinref part="X1" gate="-21" pin="S"/>
<wire x1="114.46" y1="152.64" x2="115" y2="152.64" width="0.1524" layer="91"/>
<wire x1="115" y1="152.64" x2="115" y2="140" width="0.1524" layer="91"/>
<wire x1="115" y1="140" x2="152" y2="140" width="0.1524" layer="91"/>
<wire x1="152" y1="140" x2="152" y2="40" width="0.1524" layer="91"/>
<pinref part="R8" gate="G$1" pin="2"/>
<wire x1="152" y1="40" x2="155" y2="40" width="0.1524" layer="91"/>
<wire x1="155" y1="40" x2="155" y2="32.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$45" class="0">
<segment>
<pinref part="X1" gate="-24" pin="S"/>
<wire x1="117" y1="180.58" x2="117" y2="175" width="0.1524" layer="91"/>
<wire x1="117" y1="175" x2="172" y2="175" width="0.1524" layer="91"/>
<wire x1="172" y1="175" x2="172" y2="73" width="0.1524" layer="91"/>
<pinref part="R10" gate="G$1" pin="2"/>
<wire x1="172" y1="73" x2="175" y2="73" width="0.1524" layer="91"/>
<wire x1="175" y1="73" x2="175" y2="72.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$46" class="0">
<segment>
<pinref part="X2" gate="-39" pin="S"/>
<wire x1="137.32" y1="208.52" x2="137" y2="208.52" width="0.1524" layer="91"/>
<wire x1="137" y1="208.52" x2="137" y2="207" width="0.1524" layer="91"/>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="137" y1="207" x2="40" y2="207" width="0.1524" layer="91"/>
<wire x1="40" y1="207" x2="40" y2="2.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$47" class="0">
<segment>
<pinref part="R3" gate="G$1" pin="2"/>
<wire x1="80" y1="2.86" x2="83" y2="233" width="0.1524" layer="91"/>
<pinref part="X2" gate="-40" pin="S"/>
<wire x1="83" y1="233" x2="137.32" y2="233" width="0.1524" layer="91"/>
<wire x1="137.32" y1="233" x2="137.32" y2="239" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$48" class="0">
<segment>
<pinref part="X2" gate="-37" pin="S"/>
<wire x1="134.78" y1="208.52" x2="156" y2="208.52" width="0.1524" layer="91"/>
<wire x1="156" y1="208.52" x2="156" y2="131" width="0.1524" layer="91"/>
<pinref part="R5" gate="G$1" pin="2"/>
<wire x1="156" y1="131" x2="120" y2="131" width="0.1524" layer="91"/>
<wire x1="120" y1="131" x2="120" y2="2.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$43" class="0">
<segment>
<pinref part="R22" gate="G$1" pin="2"/>
<wire x1="145" y1="112.86" x2="145" y2="128" width="0.1524" layer="91"/>
<wire x1="145" y1="128" x2="157" y2="128" width="0.1524" layer="91"/>
<wire x1="157" y1="128" x2="157" y2="205" width="0.1524" layer="91"/>
<pinref part="X2" gate="-29" pin="S"/>
<wire x1="157" y1="205" x2="124.62" y2="205" width="0.1524" layer="91"/>
<wire x1="124.62" y1="205" x2="124.62" y2="208.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$49" class="0">
<segment>
<pinref part="R21" gate="G$1" pin="2"/>
<wire x1="155" y1="112.86" x2="155" y2="126" width="0.1524" layer="91"/>
<wire x1="155" y1="126" x2="158" y2="126" width="0.1524" layer="91"/>
<wire x1="158" y1="126" x2="158" y2="235" width="0.1524" layer="91"/>
<pinref part="X2" gate="-30" pin="S"/>
<wire x1="158" y1="235" x2="124.62" y2="235" width="0.1524" layer="91"/>
<wire x1="124.62" y1="235" x2="124.62" y2="239" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$50" class="0">
<segment>
<pinref part="R7" gate="G$1" pin="2"/>
<wire x1="145" y1="32.86" x2="161" y2="32.86" width="0.1524" layer="91"/>
<wire x1="161" y1="32.86" x2="161" y2="204" width="0.1524" layer="91"/>
<pinref part="X2" gate="-33" pin="S"/>
<wire x1="161" y1="204" x2="129.7" y2="204" width="0.1524" layer="91"/>
<wire x1="129.7" y1="204" x2="129.7" y2="208.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$51" class="0">
<segment>
<pinref part="X2" gate="-34" pin="S"/>
<wire x1="129.7" y1="239" x2="130" y2="239" width="0.1524" layer="91"/>
<wire x1="130" y1="239" x2="130" y2="230" width="0.1524" layer="91"/>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="130" y1="230" x2="165" y2="230" width="0.1524" layer="91"/>
<wire x1="165" y1="230" x2="165" y2="72.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$52" class="0">
<segment>
<pinref part="BUTTON4" gate="-2" pin="KL"/>
<wire x1="110" y1="115.08" x2="110" y2="130" width="0.1524" layer="91"/>
<wire x1="110" y1="130" x2="96" y2="130" width="0.1524" layer="91"/>
<wire x1="96" y1="130" x2="80" y2="130" width="0.1524" layer="91"/>
<wire x1="80" y1="130" x2="65" y2="130" width="0.1524" layer="91"/>
<wire x1="65" y1="130" x2="18" y2="130" width="0.1524" layer="91"/>
<wire x1="18" y1="130" x2="18" y2="-55" width="0.1524" layer="91"/>
<pinref part="DAYTIME_RUNNING_LIGHT_6" gate="1" pin="C"/>
<wire x1="155" y1="90" x2="155" y2="85" width="0.1524" layer="91"/>
<wire x1="155" y1="85" x2="160" y2="85" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_1" gate="1" pin="C"/>
<wire x1="95" y1="-55" x2="90" y2="-55" width="0.1524" layer="91"/>
<wire x1="90" y1="-55" x2="80" y2="-55" width="0.1524" layer="91"/>
<wire x1="80" y1="-55" x2="75" y2="-55" width="0.1524" layer="91"/>
<wire x1="75" y1="-55" x2="60" y2="-55" width="0.1524" layer="91"/>
<wire x1="60" y1="-55" x2="55" y2="-55" width="0.1524" layer="91"/>
<wire x1="55" y1="-55" x2="50" y2="-55" width="0.1524" layer="91"/>
<wire x1="50" y1="-55" x2="45" y2="-55" width="0.1524" layer="91"/>
<wire x1="45" y1="-55" x2="40" y2="-55" width="0.1524" layer="91"/>
<wire x1="40" y1="-55" x2="40" y2="-20" width="0.1524" layer="91"/>
<pinref part="DAYTIME_RUNNING_LIGHT_1" gate="1" pin="C"/>
<wire x1="50" y1="-20" x2="50" y2="-55" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_2" gate="1" pin="C"/>
<wire x1="80" y1="-20" x2="80" y2="-55" width="0.1524" layer="91"/>
<pinref part="DAYTIME_RUNNING_LIGHT_2" gate="1" pin="C"/>
<wire x1="90" y1="-20" x2="90" y2="-55" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_3" gate="1" pin="C"/>
<wire x1="120" y1="-20" x2="120" y2="-55" width="0.1524" layer="91"/>
<wire x1="120" y1="-55" x2="115" y2="-55" width="0.1524" layer="91"/>
<pinref part="DAYTIME_RUNNING_LIGHT_3" gate="1" pin="C"/>
<wire x1="115" y1="-55" x2="105" y2="-55" width="0.1524" layer="91"/>
<wire x1="105" y1="-55" x2="95" y2="-55" width="0.1524" layer="91"/>
<wire x1="130" y1="-20" x2="130" y2="-55" width="0.1524" layer="91"/>
<wire x1="130" y1="-55" x2="120" y2="-55" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_4" gate="1" pin="C"/>
<wire x1="130" y1="-55" x2="135" y2="-55" width="0.1524" layer="91"/>
<wire x1="135" y1="-55" x2="140" y2="-55" width="0.1524" layer="91"/>
<wire x1="145" y1="10" x2="145" y2="-55" width="0.1524" layer="91"/>
<pinref part="DAYTIME_RUNNING_LIGHT_4" gate="1" pin="C"/>
<wire x1="145" y1="-55" x2="155" y2="-55" width="0.1524" layer="91"/>
<wire x1="155" y1="10" x2="155" y2="-55" width="0.1524" layer="91"/>
<wire x1="155" y1="-55" x2="160" y2="-55" width="0.1524" layer="91"/>
<wire x1="160" y1="-55" x2="165" y2="-55" width="0.1524" layer="91"/>
<wire x1="165" y1="-55" x2="170" y2="-55" width="0.1524" layer="91"/>
<wire x1="170" y1="-55" x2="175" y2="-55" width="0.1524" layer="91"/>
<wire x1="175" y1="-55" x2="175" y2="-40" width="0.1524" layer="91"/>
<pinref part="LOW_BEAM_1" gate="1" pin="C"/>
<wire x1="35" y1="25" x2="35" y2="-55" width="0.1524" layer="91"/>
<wire x1="35" y1="-55" x2="40" y2="-55" width="0.1524" layer="91"/>
<pinref part="LOW_BEAM_2" gate="1" pin="C"/>
<wire x1="45" y1="50" x2="45" y2="-55" width="0.1524" layer="91"/>
<pinref part="LOW_BEAM_4" gate="1" pin="C"/>
<wire x1="35" y1="60" x2="35" y2="55" width="0.1524" layer="91"/>
<wire x1="35" y1="55" x2="30" y2="55" width="0.1524" layer="91"/>
<wire x1="30" y1="55" x2="30" y2="-55" width="0.1524" layer="91"/>
<wire x1="30" y1="-55" x2="35" y2="-55" width="0.1524" layer="91"/>
<pinref part="LOW_BEAM_5" gate="1" pin="C"/>
<wire x1="55" y1="60" x2="55" y2="55" width="0.1524" layer="91"/>
<wire x1="55" y1="55" x2="60" y2="55" width="0.1524" layer="91"/>
<wire x1="60" y1="55" x2="60" y2="-55" width="0.1524" layer="91"/>
<pinref part="LOW_BEAM_3" gate="1" pin="C"/>
<wire x1="55" y1="25" x2="55" y2="-55" width="0.1524" layer="91"/>
<pinref part="HIGH_BEAM_1" gate="1" pin="C"/>
<wire x1="75" y1="50" x2="75" y2="-55" width="0.1524" layer="91"/>
<pinref part="HIGH_BEAM_2" gate="1" pin="C"/>
<wire x1="90" y1="50" x2="90" y2="40" width="0.1524" layer="91"/>
<wire x1="90" y1="40" x2="95" y2="40" width="0.1524" layer="91"/>
<wire x1="95" y1="40" x2="95" y2="-55" width="0.1524" layer="91"/>
<pinref part="HIGH_BEAM_3" gate="1" pin="C"/>
<wire x1="105" y1="50" x2="105" y2="-55" width="0.1524" layer="91"/>
<pinref part="HIGH_BEAM_4" gate="1" pin="C"/>
<wire x1="120" y1="50" x2="120" y2="40" width="0.1524" layer="91"/>
<wire x1="120" y1="40" x2="115" y2="40" width="0.1524" layer="91"/>
<wire x1="115" y1="40" x2="115" y2="-55" width="0.1524" layer="91"/>
<pinref part="HIGH_BEAM_5" gate="1" pin="C"/>
<wire x1="135" y1="50" x2="135" y2="-55" width="0.1524" layer="91"/>
<pinref part="TURN_INDICATOR_5" gate="1" pin="C"/>
<wire x1="165" y1="50" x2="165" y2="-55" width="0.1524" layer="91"/>
<pinref part="DAYTIME_RUNNING_LIGHT_5" gate="1" pin="C"/>
<wire x1="175" y1="50" x2="175" y2="40" width="0.1524" layer="91"/>
<wire x1="175" y1="40" x2="170" y2="40" width="0.1524" layer="91"/>
<wire x1="170" y1="40" x2="170" y2="-55" width="0.1524" layer="91"/>
<wire x1="160" y1="85" x2="160" y2="-55" width="0.1524" layer="91"/>
<pinref part="DAYTIME_RUNNING_LIGHT_7" gate="1" pin="C"/>
<wire x1="145" y1="90" x2="145" y2="85" width="0.1524" layer="91"/>
<wire x1="145" y1="85" x2="140" y2="85" width="0.1524" layer="91"/>
<wire x1="140" y1="85" x2="140" y2="-55" width="0.1524" layer="91"/>
<wire x1="145" y1="-55" x2="140" y2="-55" width="0.1524" layer="91"/>
<wire x1="18" y1="-55" x2="30" y2="-55" width="0.1524" layer="91"/>
<junction x="30" y="-55"/>
<pinref part="BUTTON3" gate="-2" pin="KL"/>
<wire x1="95" y1="115.08" x2="96" y2="115.08" width="0.1524" layer="91"/>
<wire x1="96" y1="115.08" x2="96" y2="130" width="0.1524" layer="91"/>
<junction x="96" y="130"/>
<pinref part="BUTTON2" gate="-2" pin="KL"/>
<wire x1="80" y1="115.08" x2="80" y2="130" width="0.1524" layer="91"/>
<junction x="80" y="130"/>
<pinref part="BUTTON1" gate="-2" pin="KL"/>
<wire x1="65" y1="115.08" x2="65" y2="130" width="0.1524" layer="91"/>
<junction x="65" y="130"/>
<pinref part="LIGHT_SENSOR" gate="-3" pin="KL"/>
<wire x1="185.08" y1="89.92" x2="186.54" y2="89.92" width="0.1524" layer="91"/>
<wire x1="186.54" y1="89.92" x2="186.54" y2="-55" width="0.1524" layer="91"/>
<wire x1="186.54" y1="-55" x2="175" y2="-55" width="0.1524" layer="91"/>
<junction x="170" y="-55"/>
</segment>
</net>
<net name="N$53" class="0">
<segment>
<pinref part="R24" gate="G$1" pin="2"/>
<wire x1="175" y1="7.86" x2="166" y2="7.86" width="0.1524" layer="91"/>
<wire x1="166" y1="7.86" x2="166" y2="149" width="0.1524" layer="91"/>
<pinref part="X1" gate="-47" pin="S"/>
<wire x1="166" y1="149" x2="147.48" y2="149" width="0.1524" layer="91"/>
<wire x1="147.48" y1="149" x2="147.48" y2="152.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$54" class="0">
<segment>
<pinref part="X2" gate="-44" pin="S"/>
<pinref part="LIGHT_SENSOR" gate="-1" pin="KL"/>
<wire x1="142.4" y1="239" x2="185.08" y2="239" width="0.1524" layer="91"/>
<wire x1="185.08" y1="239" x2="185.08" y2="100.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$55" class="0">
<segment>
<pinref part="LIGHT_SENSOR" gate="-2" pin="KL"/>
<wire x1="185.08" y1="95" x2="187" y2="95" width="0.1524" layer="91"/>
<wire x1="187" y1="95" x2="187" y2="108" width="0.1524" layer="91"/>
<pinref part="R23" gate="G$1" pin="1"/>
<wire x1="187" y1="108" x2="175" y2="108" width="0.1524" layer="91"/>
<wire x1="175" y1="108" x2="175" y2="107.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$56" class="0">
<segment>
<pinref part="R23" gate="G$1" pin="2"/>
<wire x1="175" y1="117.86" x2="147" y2="117.86" width="0.1524" layer="91"/>
<wire x1="147" y1="117.86" x2="147" y2="146" width="0.1524" layer="91"/>
<pinref part="X1" gate="-45" pin="S"/>
<wire x1="147" y1="146" x2="144.94" y2="146" width="0.1524" layer="91"/>
<wire x1="144.94" y1="146" x2="144.94" y2="152.64" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, Eagle supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
</compatibility>
</eagle>
