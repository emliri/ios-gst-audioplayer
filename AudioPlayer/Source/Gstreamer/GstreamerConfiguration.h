#ifndef __GstreamerConfiguration_H__
#define __GstreamerConfiguration_H__

/*
 * Wether to use avfassetsrc to access local files on iOS
 * (this is wrapping AVFAssetReader API that reads and
 * decodes samples from media files on iOS, they get piped into playsink as raw samples)
 *
 * There is a deadlock observed when using the element, and we haven't seen any
 * issue with using filesrc instead. The performance may be impacted however, since we
 * are doing more things in the user-space that may be done in kernel when using AVFAssetReader API.
 */
#define USE_AVFASSETSRC FALSE

#define GST_G_IO_MODULE_DECLARE(name) \
extern void G_PASTE(g_io_module_, G_PASTE(name, _load_static)) (void)

#define GST_G_IO_MODULE_LOAD(name) \
G_PASTE(g_io_module_, G_PASTE(name, _load_static)) ()

#define GST_IOS_PLUGINS_CORE
#define GST_IOS_PLUGINS_SYS
#define GST_IOS_PLUGINS_PLAYBACK
#define GST_IOS_PLUGINS_CODECS
#define GST_IOS_PLUGINS_NET
#define GST_IOS_GIO_MODULE_GNUTLS

void GstreamerConfiguration (void);


#endif
