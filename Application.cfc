<cfcomponent extends="fusebox5.Application" output="false">
    <cfscript>
        this.name = "Giff Me Gugma";
        this.applicationTimeout = createTimeSpan(0, 6, 0, 0);
        this.sessionManagement = true;
        this.sessionTimeout = createTimeSpan(0, 0, 30, 0);
        this.clientManagement = true;
        this.mainDSN = "myDSN";
        this.webmasterEmail = "myEmail@myDomain.com";
    </cfscript>

    <!-- trap non-index.cfm requests – must be outside onXxxYyy() handlers -->
    <cfif right(cgi.script_name, len("index.cfm")) neq "index.cfm" and
        right(cgi.script_name, 3) neq "cfc">
        <cflocation url="index.cfm" addtoken="no"/>
    </cfif>

    <cffunction name="onApplicationStart" returntype="boolean" output="false">
        <cfset applicationStop() />
        <cfreturn true>
    </cffunction>

    <cffunction name="onApplicationEnd" output="false">
        <cfargument name="applicationScope" required="true"/>
    </cffunction>

    <cffunction name="onSessionStart" output="false">
    </cffunction>

    <cffunction name="onSessionEnd" output="false">
    </cffunction>

    <cffunction name="onFuseboxApplicationStart">
        <cfset super.onFuseboxApplicationStart()/>
        <!-- code formerly in fusebox.appinit.cfm -->
        <cfif not structKeyExists(application, "mainDSN")>
            <cflock name="mainDSN" type="exclusive" timeout="10">
                <cfset application.mainDSN = this.mainDSN/>
            </cflock>
        </cfif>
    </cffunction>

    <cffunction name="onRequestStart">
        <cfargument name="targetPage"/>
        <cfscript>
            super.onRequestStart(arguments.targetPage);
//code formerly in fusebox.init.cfm
            self = myFusebox.getSelf();
            myself = myFusebox.getMyself();
            if (listFirst(CGI.SERVER_NAME, ".") == "www") {
                FUSEBOX_PARAMETERS.mode = "production";
            } else {
                FUSEBOX_PARAMETERS.mode = "development-full-load";
            }
// request scope
            request.applicationName = this.name;
            request.mainDSN = this.mainDSN;
            request.webmasterEmail = this.webmasterEmail;
            request.baseDir = GetDirectoryFromPath(GetBaseTemplatePath());
            request.componentPath = "assets.components.";
            request.imagePath = "assets/images/";
            request.cssPath = "assets/css/";
            request.jsPath = "assets/js/";
            request.flashPath = "assets/multimedia/";
            request.videoPath = "assets/multimedia/";
            request.ppsPath = "assets/multimedia/";
            request.contoller = "a/multimedia/";
        </cfscript>
    </cffunction>

</cfcomponent>

<form id="form" action="dsp_home.cfm" method="post">
    <div>
        <label>Name <span class="font-11"></span></label>
        <input name="contactname" type="text" value="" class="required" />
    </div>
    <div>
        <label>Birthday <span class="font-11"></span></label>
        <input name="email" type="text" value="" class="required date" />
    </div>
    <div>
        <label>Favorite Color <span class="font-11"></span></label>
        <input name="email" type="text" value="" class="required text" />
    </div>
    <div>
        <label>Likes <span class="font-11"></span></label>
        <input name="email" type="text" value="" class="required text" />
    </div>
    <div>
        <label>Dislikes <span class="font-11"></span></label>
        <input name="email" type="text" value="" class="required text" />
    </div>
    <div class="textarea">
        <label>Describe Yourself <span class="font-11"></span></label>
        <textarea name="message" rows="6" cols="60" class="required"></textarea>
    </div>
    <div>
        <input id="submitBtn" value="Submit"  name="submit" type="submit" class="submitBtn" />
    </div>
    <input type="hidden" name="submitted" value="1" />
</form>