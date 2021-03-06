{include file='header'}

<header class="mainHeading">
	<img src="{@RELATIVE_WCF_DIR}icon/{$action}1.svg" alt="" />
	<hgroup>
		<h1>{lang}wcf.acp.bbcode.videoprovider.{$action}{/lang}</h1>
		<h2>{lang}wcf.acp.bbcode.videoprovider.subtitle{/lang}</h2>
	</hgroup>
</header>

{if $errorField}
	<p class="error">{lang}wcf.global.form.error{/lang}</p>
{/if}

{if $success|isset}
	<p class="success">{lang}wcf.global.form.{$action}.success{/lang}</p>	
{/if}

<div class="contentHeader">
	<nav>
		<ul class="largeButtons">
			<li><a href="{link controller='BBCodeList'}{/link}" title="{lang}wcf.acp.menu.link.bbcode.list{/lang}"><img src="{@RELATIVE_WCF_DIR}icon/bbcode1.svg" alt="" /> <span>{lang}wcf.acp.menu.link.bbcode.list{/lang}</span></a></li>
		</ul>
	</nav>
</div>

<form method="post" action="{if $action == 'add'}{link controller='BBCodeAdd'}{/link}{else}{link controller='BBCodeEdit'}{/link}{/if}">
	<div class="border content">
		<fieldset>
			<legend>{lang}wcf.acp.bbcode.data{/lang}</legend>
			
			<dl{if $errorField == 'bbcodeTag'} class="formError"{/if}>
				<dt><label for="bbcodeTag">{lang}wcf.acp.bbcode.bbcodeTag{/lang}</label></dt>
				<dd>
					<input type="text" id="bbcodeTag" name="bbcodeTag" value="{$bbcodeTag}" class="medium" required="required" />
					{if $errorField == 'bbcodeTag'}
						<small class="innerError">
							{if $errorType == 'empty'}
								{lang}wcf.global.form.error.empty{/lang}
							{elseif $errorType == 'invalid'}
								{lang}wcf.acp.bbcode.error.bbcodeTag.invalid{/lang}
							{elseif $errorType == 'inUse'}
								{lang}wcf.acp.bbcode.error.bbcodeTag.inUse{/lang}
							{/if}
						</small>
					{/if}
				</dd>
			</dl>
			
			<dl{if $errorField == 'htmlOpen'} class="formError"{/if}>
				<dt><label for="htmlOpen">{lang}wcf.acp.bbcode.htmlOpen{/lang}</label></dt>
				<dd>
					<input type="text" id="htmlOpen" name="htmlOpen" value="{$htmlOpen}" class="long" />
				</dd>
			</dl>
			
			<dl{if $errorField == 'htmlClose'} class="formError"{/if}>
				<dt><label for="htmlClose">{lang}wcf.acp.bbcode.htmlClose{/lang}</label></dt>
				<dd>
					<input type="text" id="htmlClose" name="htmlClose" value="{$htmlClose}" class="long" />
				</dd>
			</dl>
			
			<dl{if $errorField == 'textOpen'} class="formError"{/if}>
				<dt><label for="textOpen">{lang}wcf.acp.bbcode.textOpen{/lang}</label></dt>
				<dd>
					<input type="text" id="textOpen" name="textOpen" value="{$textOpen}" class="long" />
				</dd>
			</dl>
			
			<dl{if $errorField == 'textClose'} class="formError"{/if}>
				<dt><label for="textClose">{lang}wcf.acp.bbcode.textClose{/lang}</label></dt>
				<dd>
					<input type="text" id="textClose" name="textClose" value="{$textClose}" class="long" />
				</dd>
			</dl>
			
			<dl{if $errorField == 'allowedChildren'} class="formError"{/if}>
				<dt><label for="allowedChildren">{lang}wcf.acp.bbcode.allowedChildren{/lang}</label></dt>
				<dd>
					<input type="text" id="allowedChildren" name="allowedChildren" value="{$allowedChildren}" class="long" required="required" />
					{if $errorField == 'allowedChildren'}
						<small class="innerError">
							{if $errorType == 'empty'}
								{lang}wcf.global.form.error.empty{/lang}
							{elseif $errorType == 'invalid'}
								{lang}wcf.acp.bbcode.error.allowedChildren.invalid{/lang}
							{/if}
						</small>
					{/if}
				</dd>
			</dl>
			
			<dl{if $errorField == 'className'} class="formError"{/if}>
				<dt><label for="className">{lang}wcf.acp.bbcode.className{/lang}</label></dt>
				<dd>
					<input type="text" id="className" name="className" value="{$className}" class="long" />
					{if $errorField == 'className'}
						<small class="innerError">
							{if $errorType == 'notFound'}
								{lang}wcf.acp.bbcode.error.className.notFound{/lang}
							{/if}
						</small>
					{/if}
				</dd>
			</dl>
		</fieldset>
	</div>
	
	<div class="formSubmit">
		<input type="reset" value="{lang}wcf.global.button.reset{/lang}" accesskey="r" />
		<input type="submit" value="{lang}wcf.global.button.submit{/lang}" accesskey="s" />
		{@SID_INPUT_TAG}
 		{if $bbcodeID|isset}<input type="hidden" name="id" value="{@$bbcodeID}" />{/if}
	</div>
</form>

{include file='footer'}