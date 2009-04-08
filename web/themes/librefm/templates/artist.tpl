{include file='header.tpl'}

<h2>{$name}</h2>

<div id="bio">
	{$bio_summary}
</div>

<ul id="albums" class="listcloud">
  {section name=i loop=$albums}
  <li>
    <dl>
      <dt><a href="album.php?artist={$name|urlencode}&album={$albums[i]->name|urlencode}">
        {$albums[i]->name}</a></dt>
	<dd>{$albums[i]->releasedate}</dd>
    </dl>
  </li>
  {/section}
</ul>

{include file='footer.tpl'}
