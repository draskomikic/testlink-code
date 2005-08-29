{* TestLink Open Source Project - http://testlink.sourceforge.net/ *}
{* $Id: tcDelete.tpl,v 1.3 2005/08/29 07:08:57 franciscom Exp $ *}
{* Purpose: smarty template - delete test case in test specification *}
{* I18N: 20050528 - fm *}

{include file="inc_head.tpl"}

<body>
<div class="workBack">

{include file="inc_title.tpl" title="Delete test case"} 
{include file="inc_update.tpl" result=$sqlResult item="test case" refresh='yes'}

{if $sqlResult == ''}
	<p>{lang_get s='question_del_tc'}</p>
	<form method="post" action="lib/testcases/tcEdit.php?sure=yes&testcaseID={$testcaseID}"> 
		<input type="submit" name="deleteTC" value="{lang_get s='btn_yes_iw2del'}" />
	</form>
{/if}

</div>
</body>
</html>