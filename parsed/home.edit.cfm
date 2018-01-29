<cfsetting enablecfoutputonly="true" />
<cfprocessingdirective pageencoding="utf-8" />
<!--- circuit: home --->
<!--- fuseaction: edit --->
<cftry>
<cfset myFusebox.thisPhase = "appinit">
<cfset myFusebox.thisCircuit = "home">
<cfset myFusebox.thisFuseaction = "edit">
<cfif myFusebox.applicationStart or
		not myFusebox.getApplication().applicationStarted>
	<cflock name="#application.ApplicationName#_fusebox_#FUSEBOX_APPLICATION_KEY#_appinit" type="exclusive" timeout="30">
		<cfif not myFusebox.getApplication().applicationStarted>
			<cfset myFusebox.getApplication().applicationStarted = true />
		</cfif>
	</cflock>
</cfif>
<!--- do action="mhome.edit" --->
<cfset myFusebox.thisPhase = "requestedFuseaction">
<cfset myFusebox.thisCircuit = "mhome">
<cftry>
<cfoutput><cfinclude template="../model/home/m_edit.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 10 and right(cfcatch.MissingFileName,10) is "m_edit.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse m_edit.cfm in circuit mhome which does not exist (from fuseaction mhome.edit).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="layout.header" --->
<cfset myFusebox.thisCircuit = "layout">
<cfset myFusebox.thisFuseaction = "header">
<cftry>
<cfoutput><cfinclude template="../view/layouts/lay_header.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "lay_header.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse lay_header.cfm in circuit layout which does not exist (from fuseaction layout.header).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="vhome.edit" --->
<cfset myFusebox.thisCircuit = "vhome">
<cfset myFusebox.thisFuseaction = "edit">
<cftry>
<cfsavecontent variable="body"><cfoutput><cfinclude template="../view/home/dsp_edit.cfm"></cfoutput></cfsavecontent>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 12 and right(cfcatch.MissingFileName,12) is "dsp_edit.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse dsp_edit.cfm in circuit vhome which does not exist (from fuseaction vhome.edit).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="layout.footer" --->
<cfset myFusebox.thisCircuit = "layout">
<cfset myFusebox.thisFuseaction = "footer">
<cftry>
<cfoutput><cfinclude template="../view/layouts/lay_footer.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 14 and right(cfcatch.MissingFileName,14) is "lay_footer.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse lay_footer.cfm in circuit layout which does not exist (from fuseaction layout.footer).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<!--- do action="layout.mainLayout" --->
<cfset myFusebox.thisFuseaction = "mainLayout">
<cftry>
<cfoutput><cfinclude template="../view/layouts/lay_template.cfm"></cfoutput>
<cfcatch type="missingInclude"><cfif len(cfcatch.MissingFileName) gte 16 and right(cfcatch.MissingFileName,16) is "lay_template.cfm">
<cfthrow type="fusebox.missingFuse" message="missing Fuse" detail="You tried to include a fuse lay_template.cfm in circuit layout which does not exist (from fuseaction layout.mainLayout).">
<cfelse><cfrethrow></cfif></cfcatch></cftry>
<cfcatch><cfrethrow></cfcatch>
</cftry>

