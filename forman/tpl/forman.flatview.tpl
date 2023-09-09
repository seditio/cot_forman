<!-- BEGIN: MAIN -->
<main id="forums_sections">
	<div class="container">

		<div class="row my-5">
			<div class="col">
				<div class="title px-2 px-sm-0">
					<h1 class="lh-1 mb-1">{PHP.L.Forums}</h1>
					<p class="mb-0">
						{FORUMS_SECTIONS_PAGETITLE}
					</p>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col">
				<div id="topics2list">
					{PHP|sedby_topiclist('forman.topiclist', '3', '', '', '0', '0', 'ftp', 'topics2list')}
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col">

				<div class="block">
					{FILE "{PHP.cfg.plugins_dir}/forman/tpl/inc/forums-help.tpl"}
				</div>

				<div class="block">
					<span class="fw-bold fs-5 mb-2 d-block">Статистика форумов</span>
					<ul class="list-unstyled mb-0">
						<li>
							Сообщений: {PHP|sedby_forman_count('posts')}, тем: {PHP|sedby_forman_count('topics')}, пользователей: {PHP|sedby_forman_count('users')}
						</li>
						<li>
							Последнее сообщение: {PHP|sedby_postlist('forman.postlist.basic', 1, 'fp_updated DESC')}
						</li>
					</ul>
				</div>

				<div class="block mb-4">
					<span class="fw-bold fs-5 mb-2 d-block">Топ авторов</span>
					<div id="top2list">
						{PHP|sedby_forman_topusers('forman.topusers', '0', '', '', '0', '0', '', '')}
					</div>
				</div>

			</div>
		</div>

	</div>
</main>
<!-- END: MAIN -->
