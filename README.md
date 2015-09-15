## Check it out

You can view the layout at:

[http://victornguyen.github.io/ddtest/][ghpages]


## Running locally

After cloning, run:

	bundle install
	bower install

Start middleman:

	bundle exec middleman

Visit:

	0.0.0.0:4567


## Development Notes

- Thought I'd try out Middleman for this after our chat. It's pretty cool!
- Also gave DDBreakpoints a go.
- JS dependencies in Sprockets is a bit weird. Usually go with browserify/webpack, but wanted to do it the Middleman way for this.
- I like BEM, which can be a controversial opinion depending on the team.
- Thought I'd try out [Susy].
- In `_intro.erb`, the annoying little "for" text is in a script font that's not used anywhere else. We could inline a base64'ed subset of the font (with only the necessary chars), or we could talk to the designer (my preference).


## Responses

> Please let us know which browser you’ve used to develop in (e.g. Chrome/Firefox)

I use Chrome Canary to get access to the latest dev tool hotness. Unless the day's build is broken, at which point I use regular Chrome.

> Please annotate anywhere you think there might be accessibility issues and how you might get around them.

I don't see any glaring accessibility issues with this layout/design. I'm probably missing something. The carousel I've used uses aria attributes to designate what is visible/hidden, which is nice. As I'm typing this I've just realised I forgot to add `alt` attributes to my images.

> If you're using SASS/SCSS/LESS, please include your construction files as well as the output HTML.

Compiled files can be generated with:

	bundle exec middleman build

They'll be dumped into the `build/` directory. Or you can view the `gh-pages` branch of this repo.


[ghpages]: http://victornguyen.github.io/ddtest/
[Susy]: http://susy.oddbird.net/

