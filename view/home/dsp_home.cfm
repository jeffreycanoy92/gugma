<cfoutput>
    <div id="container">

        <!--Card  -->
    <div id="content">
    <div class="card-pattern">
        <!-- contact -->
    <div id="contact">
        <div class="clr">
            <div class="top-bg1">
                <div class="top-left">
                    <div><h1>Create Crush Info</h1></div>
                </div>
            </div>
            <div class="clr">
                <div class="pat-bottomleft">&nbsp;</div>
                <div class="pat-bottomright">&nbsp;</div>
            </div>
        </div>
    <div class="clr">
        <div class="clr hline">&nbsp;</div>
    <div class="left">
    <div class="clr">
    <div id="respond">

    <div class="boxBody">
    <div class="desc">
    <cfoutput>
            <form id="form" action="##">
                <div>
                    <label>Name <span class="font-11"></span></label>
                    <input name="name" id="name" type="text" value="" class="required" />
                </div>
                <div>
                    <label>Birthday <span class="font-11"></span></label>
                    <input name="birthday" type="text" id="birthday" value="" class="required date" />
                </div>
                <div>
                    <label>Likes <span class="font-11"></span></label>
                    <input name="likes" type="text" id="likes"value="" class="required text" />
                </div>
                <div>
                    <label>Dislikes <span class="font-11"></span></label>
                    <input name="dislikes" type="text" id="dislikes" value="" class="required text" />
                </div>
                <div class="textarea">
                    <label>Describe Yourself <span class="font-11"></span></label>
                    <textarea name="description" rows="6" id="description" cols="60" class="required"></textarea>
                </div>
                <div>
                    <input id="submitBtn" value="Submit"  name="submit" type="submit" class="submitBtn" />
                </div>
            </form>
    </cfoutput>
    </div><!--END desc show-->
        <!--END desc-->
    </div>
        <div  class="clr"></div>
    </div>
    </div>
    </div>
    </div>
        <!--//left end //-->

        <div class="clr">
            <div class="pad-top5"></div>
        </div>
    </div>
    </div><!--//clr end //-->
        <div class="clr"></div>
    </div><!-- contact end -->

        <div class="clr"></div>
    </div><!--card pattern end -->
        <div class="clr "></div>
    </div>		  <!--content end -->
        <div class="bottom-shade"></div>
    </div>  <!--Container / wrapper end -->

</cfoutput>


