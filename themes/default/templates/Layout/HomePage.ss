    <div class="mid-container">    
        <div class="slider-container">
        
				
				<% if Sliders %>
				<div class="orbit" role="region" aria-label="Favorite Space Pictures" data-orbit data-options="animInFromLeft:fade-in; animInFromRight:fade-in; animOutToLeft:fade-out; animOutToRight:fade-out;">
				  <ul class="orbit-container">
					<button class="orbit-previous"><span class="show-for-sr">Previous Slide</span>&#9664;&#xFE0E;</button>
					<button class="orbit-next"><span class="show-for-sr">Next Slide</span>&#9654;&#xFE0E;</button>
					<% loop $Sliders %>						  
					<li class="<% if $First %>is-active <% end_if %>orbit-slide">
					  <img class="orbit-image" src="$Photo.URL" alt="$Photo.FileName" data-interchange="[$Photo.SetWidth(770).URL, small], [$Photo.SetWidth(770).URL, medium], [$Photo.URL, large]">					  
					</li>
					<% end_loop %>				
				  </ul>
					<nav class="orbit-bullets">
					  <% loop $Sliders %>
						  <button <% if $First %>class="is-active"<% end_if %> data-slide="$Pos(0)"></button>	
					  <% end_loop %>
					</nav>				  
				</div>            
				<% end_if %>
				
        </div>
	
	<div class="row home">
	  <div class="small-12 medium-3 large-3 columns">
		 <h4><small>$Title</small></h4>
		  $Content
	  </div>		
	  <div class="small-12  medium-9 large-9 columns"> 				
		   <div class="row small-up-1 medium-up-3 large-up-3">
				<% loop LatestProducts %>
					<div class="column">
					  <h4><small>$Title</small></h4>
						<a href="$Link">					  						
							<img src="$Photo.ResizedImage(270,160).URL" class="thumbnail">													
						</a>
					  <p class="clearfix">$Content.Summary(10)
					  <a href="$Link" class="button float-right">more..</a></p>					  
					</div>				
				<% end_loop %>
			</div>		   
	  </div>	
	  
	  
	</div>
