	<% include Banner %>
    <div class="row main">
      <div class="large-12 columns">
        <h2>$Parent.Title</h2>
		
			<h3>$Title</h3>		
			<div class="row">
				<div class="small-12 large-8 columns">
					$Content
					$Form
				</div>
				<div class="small-12 large-4 large-centered columns">		
					<img src="$Photo.CroppedImage(350,250).URL" alt="$Photo.Title" class="float-center">
				</div>			
			</div>

		<% if ProductImages %>
		   <div class="row small-up-2 medium-up-3 large-up-5">
				<% loop ProductImages %>
				  <div class="columns">				
					  <a data-title="$Photo.Title" data-lightbox="$Top.Title" href="$Photo.URL"><img src="$Photo.CroppedImage(350,250).URL" class="thumbnail"/></a>		
				  </div>
				<% end_loop %>			                
           </div>
		<% end_if %>
		
      </div>
    </div>
