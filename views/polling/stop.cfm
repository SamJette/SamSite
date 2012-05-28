<script>
(function poll() {
   setTimeout(function() {
       $.ajax({ url: "http://samsite.local:8600/polling/poll?format=json", success: function(data) {
            var obj = jQuery.parseJSON(data);
			console.log(data.DATA[0][0]);
			if(data)
			if(data.DATA[0][0]==="stop"){
				console.log(data.DATA[0][0]);
			}
       }, dataType: "json", complete: poll });
    }, 3000);
})();
</script>
<cfoutput>
	#message#
</cfoutput>