<div id="newsletter_block_footer" class="thnxblocknewsletter block newsletter_block_footer col-sm-3">
	{if isset($thnx.newsletter_title) && !empty($thnx.newsletter_title)}
		<h4 class="title_block">{$thnx.newsletter_title}</h4>
	{/if}
	<div class="block_content">
		{if isset($thnx.newsletter_text) && !empty($thnx.newsletter_text)}
			<p>{$thnx.newsletter_text}</p>
		{/if}
		<form action="{$link->getPageLink('index', null, null, null, false, null, true)|escape:'html':'UTF-8'}" method="post">
			<div class="form-group{if isset($msg) && $msg } {if $nw_error}form-error{else}form-ok{/if}{/if}" >
				<input class="inputNew form-control grey newsletter-input" id="newsletter-input" type="text" name="email" size="18" value="{if isset($msg) && $msg}{$msg}{elseif isset($value) && $value}{$value}{else}{l s='Enter your e-mail' mod='thnxblocknewsletter'}{/if}" />
                <button type="submit" name="submitNewsletter" class="btn btn-default btn-black">
                	{l s='Subscribe' mod='thnxblocknewsletter'}
                    <i class="icon-chevron-right"></i>
                </button>
				<input type="hidden" name="action" value="0" />
			</div>
		</form>
	</div>
    {hook h="displaythnxblocknewsletterBottom" from='thnxblocknewsletter'}
</div>