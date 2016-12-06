	<% include Banner %>	
	
    <div class="row main">
      <div class="small-12 large-12 columns">
	  	<h2>$Title</h2>
			<div class="row main">		
			  <div class="small-12 large-6 columns">	  
					$Content			
			  </div>
			  <div class="small-12 large-6 columns">
                    <h3>Quick contact</h3>
					<% if IsSuccess && SubmitText %>
					  $SubmitText
					<% else %>
						$Form
					<% end_if %>

				</div>
			</div>
	  
	  </div>	
    </div>
