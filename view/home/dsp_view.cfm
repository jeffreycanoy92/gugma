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
                    <div><h1>View Crush</h1></div>
                </div>
            </div>
            <div class="clr">
                <div class="pat-bottomleft">&nbsp;</div>
                <div class="pat-bottomright">&nbsp;</div>
            </div>
        </div>
    <div class="clr">
        <div class="clr hline">&nbsp;</div>
    <div class="clr">

    <div class="" style="margin:0 15px;">
    <div class="desc">
    <cfoutput>
        <h3><a href="index.cfm?action=home.main" >+ Create Crush</a></h3><br/>
        <table id="view_table" class="display responsive nowrap table table-bordered table-striped table-hover dataTable">
            <thead>
                <tr>
                    <td>Name</td>
                    <td>Description</td>
                    <td>Birthday</td>
                    <td>Likes</td>
                    <td>Dislikes</td>
                    <td>Action</td>
                </tr>
            </thead>
            <tbody>
                <cfloop index="i" from="1" to="#view.recordCount#">
                    <cfoutput>
                    <tr>
                        <td>#view['name'][i]#</td>
                        <td>#view['description'][i]#</td>
                        <td>#view['birthday'][i]#</td>
                        <td>#view['likes'][i]#</td>
                        <td>#view['dislikes'][i]#</td>
                        <td><b>
                            <a href="index.cfm?action=home.edit&id=#view['id'][i]#" class="edit" >EDIT</a> |
                            <a href="" class="delete" data-id="#view['id'][i]#">DELETE</a>
                            </b>
                        </td>
                    </tr>
                    </cfoutput>
                </cfloop>
            </tbody>
        </table>
    </cfoutput>
    </div><!--END desc show-->
        <!--END desc-->
    </div>
        <div  class="clr"></div>
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

<script>
    $(document).ready(function() {
        $('#view_table').DataTable( {
            "pagingType": "full_numbers",
            "paging":   true,
            "bFilter": true,
            "responsive": true,
            "iDisplayLength": 10,
            "searching":true
        } );
    } );
</script>