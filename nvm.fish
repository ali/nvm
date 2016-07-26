function nvm
  if not type -q bass
    echo 'Bass is not installed please install it running fisher edc/bass'
    return
  end
  set -q NVM_DIR; or set -gx NVM_DIR ~/.nvm
  set -q NVM_PREFIX; or set -g NVM_PREFIX $NVM_DIR
  bass source $NVM_PREFIX/nvm.sh --no-use ';' nvm $argv
end
