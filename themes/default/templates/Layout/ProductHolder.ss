	<% include Banner %>	
	
    <div class="row main">
      <div class="large-12 columns">
      	<div class="title-container">
    	    <h2>$Title</h2>      
			</a>
        </div>	  
        
		$Content
			<% loop Children %>
				<a href="$Link">
					<h3>$Title</h3>
				</a>
				<div class="row">
					<div class="small-12 large-8 columns">
						<p class="text-justify">$Content.ContextSummary <a href="$Link">more</a></p>
					</div>
					<div class="small-12 large-4 columns">
						<a href="$Link">						
							<img src="$Photo.ResizedImage(270, 160).URL" class="thumbnail float-center" alt="$Photo.FileName">													
						</a>
					</div>			
				</div>
				<% if not $Last %><hr><% end_if %>			
			<% end_loop %>
			
		</div>
    </div><!--div class="row main"-->
