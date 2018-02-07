<!-- Block Newsletter module-->
<div class="thnxblocknewsletter newsletter_block_area thnx_parallax_section {if isset($thnx.newsletter_layout)}{$thnx.newsletter_layout}{/if}">
	<div id="newsletter_block_left" class="newsletter_block block">
		<div class="block_title">
			<h4>{$thnx.newsletter_title}</h4>
			<div class="heading-line"><span></span></div>
			<p>{$thnx.newsletter_text}</p>
		</div>
		<div class="block_content">
			<form action="{$link->getPageLink('index', null, null, null, false, null, true)|escape:'html':'UTF-8'}" method="post">
				<div class="form-group{if isset($msg) && $msg } {if $nw_error}form-error{else}form-ok{/if}{/if}" >
					<input class="inputNew form-control grey newsletter-input" id="newsletter-input" type="text" name="email" size="18" value="{if isset($msg) && $msg}{$msg}{elseif isset($value) && $value}{$value}{else}{l s='Enter your e-mail' mod='thnxblocknewsletter'}{/if}" />
	                <button type="submit" name="submitNewsletter" class="btn btn-default button button-small btn-inverse">
	                    <span>{l s='Subscribe' mod='thnxblocknewsletter'}</span>
	                </button>
					<input type="hidden" name="action" value="0" />
				</div>
			</form>
		</div>
	</div>
	{hook h="displaythnxblocknewsletterBottom" from='thnxblocknewsletter'}
</div>