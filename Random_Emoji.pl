#!/usr/bin/env perl
use Mojolicious::Lite;
use Acme::RandomEmoji 'random_emoji';

get '/random_emoji' => sub {
	my $c = shift;
	$c->render(
		template => 'random_emoji',
		emoji => random_emoji
	);
};

app->start;

__DATA__
@@ random_emoji.html.ep
<h1 style="text-align:center;"><%= $emoji %> YAY PERL <%= $emoji %></h1>