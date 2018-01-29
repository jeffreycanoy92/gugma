<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE circuit>
<!--
	Example circuit.xml file for the layout portion of an application.
-->
<circuit access="public">

    <fuseaction name="save">
        <do action="mhome.save" />
    </fuseaction>

    <fuseaction name="edit">
        <do action="mhome.update" />
    </fuseaction>

    <fuseaction name="delete">
        <do action="mhome.delete" />
    </fuseaction>

</circuit>
