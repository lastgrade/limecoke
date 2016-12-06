				  <ul class="dropdown menu" data-responsive-menu="drilldown large-dropdown">
					<% loop $Menu(1) %>
						<li ><a href="$Link" title="$Title.XML"><strong>$MenuTitle.XML</strong></a>
						<% if $Children %>
							<ul class="nested vertical menu">
							<% loop $Children %>						
								<li class="<% if $isCurrent %>current<% else_if $isSection %>section<% end_if %>">
									<a href="$Link">$MenuTitle</a>
							</li>								
							<% end_loop %>
							</ul>
						<% end_if %>							
						</li>						
					<% end_loop %>
				  </ul>
