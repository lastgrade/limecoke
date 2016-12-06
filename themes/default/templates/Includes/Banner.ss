	<div class="banner">
		<div class="inner">
		<% if $BannerImage %>			
			<img data-interchange="[$BannerImage.CroppedImage(640,146).URL, small], [$BannerImage.CroppedImage(800,146).URL, medium], [$BannerImage.URL, large]">
		<% else %>
			<img src="$ThemeDir/images/inner.jpg">			
		<% end_if %>
		</div>
	</div>	
