# image-dired+.el

Image-dired extensions

## Install:

Please install the ImageMagick before installing this elisp.

Put this file into load-path'ed directory, and byte compile it if
desired. And put the following expression into your ~/.emacs.

    (eval-after-load 'image-dired '(require 'image-dired+))

## Usage:

Toggle the asynchronous image-dired feature

    M-x image-diredx-async-mode

Toggle the adjusting image in image-dired feature

    M-x image-diredx-adjust-mode


### Optional:

Key bindings to replace `image-dired-next-line' and `image-dired-previous-line':

    (define-key image-dired-thumbnail-mode-map "\C-n" 'image-diredx-next-line)
    (define-key image-dired-thumbnail-mode-map "\C-p" 'image-diredx-previous-line)

Although default key binding is set, but like a dired buffer, revert all thumbnails if `image-diredx-async-mode' is on:

    (define-key image-dired-thumbnail-mode-map "g" 'revert-buffer)

### Recommend:

Suppress unknown cursor movements:

    (setq image-dired-track-movement nil)

