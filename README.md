# dotbot
Indy's public dotfiles managed by dotbot. Feel free to steal, let me know if you are just to amuse myself

## Software I'm using
 * Oh-my-zsh as an archive/import, so I can put git submodules inside
   * Native plugins for git and substring history
   * A theme called indy2line that I gave up for p10k
 * powerlevel highlighting - git submodule in the omz theme directory
    * https://github.com/romkatv/powerlevel10k
 * dotbot source (as gitsubmodule)
   * https://github.com/anishathalye/dotbot
 * User created dotbot bootstrap
   * https://github.com/Vaelatern/init-dotfiles
 * syntax highlighting - git submodule as omz plugin
   * https://github.com/zsh-users/zsh-syntax-highlighting
 * ITerm2 intergration
   * https://iterm2.com/documentation-shell-integration.html
   * I had to revert oh-my-zsh/lib/termsuppot.zsh to a previous version to deal with double carats
      in iTerm2 ([ab27a08](https://github.com/indythegeek/dotbot/commit/ab27a084262b4597e95bf0c1dad60dfec57cdba2))

## ToDo

 * Command-line fuzzy finder
   * https://github.com/junegunn/fzf
 * Bring in my old `.screenrc` and `.vimrc`
   * Some of that stuff is still in the previos repo [indythegeek/dotfiles](https://github.com/indythegeek/dotfiles)
 * Use grc for command highlights
 * Audit previous setups `~/git/dotfiles-migration`
 * Bring in my personal VSCode config
   * `~/Library/Application Support/Code/User/settings.json`
 * Solarized: http://ethanschoonover.com/solarized
   * Solarized vim: https://github.com/altercation/vim-colors-solarized
   * Solarized oh-my-zsh: Many of the included oh-my-zsh themes are designed to work with solarized
  
## Pushing config to remotes via ssh and container logins
   * Kyrat: https://github.com/fsquillace/kyrat
     * Kyrat does this as an ssh one-liner which limits the amount of data that can be pushed
        and the process also looks insane, causing other people looking at the process table
        to think they are being hacked
   * dottbot and kyrat: https://github.com/doot/dotfiles
   * sshrc: https://github.com/buehmann/sshrc
   * Bring Your Own Userspace (userspace/shell utils as container)
     * https://github.com/ecarlson94/dotbot-template/wiki/Bring-Your-Own-Userspace-(BYOU)
   * kubox - pushes files to containers via exec - use with kyrat to push dotfiles
     * https://github.com/zzh8829/kubox
   * p10k has some docker instructions
     * https://github.com/romkatv/powerlevel10k#try-it-in-docker
   * Kubectl tools: https://github.com/Voronenko/dotfiles
