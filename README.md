Git Shots for linux
===================
### Install
to install GitShots for linux just clone the repo and follow steps.
```git clone https://github.com/moughamir/linux-gitshots.git```
	1- Create a directory for shots ```mkdir ~/.gitshots```.
	2- Copy commitsnap.rb into ```.git/hooks/post-commit```.

### Add-on
If you want to make a video of shots install the little script by copying ```img2vid``` into ```$HOME/bin```. Now you have to just to run ```img2vid```.

If you want to make these global, use ```git config --global init.templatedir '~/.git_template'``` Then create your post-commit file inside ```~/.git_template/hooks/ ```.

### Referances
Inspired from this article [sidharath](https://sidharath.com/54/git-shots)
and Code from [gist:sstelfox/4709573](https://gist.github.com/sstelfox/4709573)

