module YouTubeHelper
    def youtube(video_id)
#        iframe = content_tag(
#            :iframe,
#            '', # empty body
            # width: 560,
            # height: 315,
#            src: "https://www\.youtube\.com/embed/#{video_id}",
            # frameborder: 0, // HTML5で廃止となっている(https://www.granfairs.com/blog/staff/youtube-on-web-base)
#            allowfullscreen: true
#        )
#        content_tag(:div, iframe, class: 'youtube-container')
        # 参照:https://teratail.com/questions/13733

        player = new YT.Player('player', {
            # height: '360',
            # width: '640',
            videoId: video_id,
            events: {
              'onReady': onPlayerReady,
              'onStateChange': onPlayerStateChange
            }
        });
    end
  end
