"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-02-18T08:20:42Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8f87c5e364f00d6473040a47184298656b5d64c9.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8f87c5e364f00d6473040a47184298656b5d64c9.zip"
      ],
      strip_prefix = "rules_cc-8f87c5e364f00d6473040a47184298656b5d64c9",
      sha256 = "cf78f9156b7b23272dd5f56c642e6c4685a71aa874309334556367c134ec5cbe",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2019-12-05T03:53:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/38f86fb55b698c51e8510c807489c9f4e047480e.zip",
           "https://github.com/bazelbuild/rules_python/archive/38f86fb55b698c51e8510c807489c9f4e047480e.zip"
      ],
      strip_prefix = "rules_python-38f86fb55b698c51e8510c807489c9f4e047480e",
      sha256 = "7d64815f4b22400bed0f1b9da663037e1578573446b7bc78f20f24b2b5459bb9",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-02-14T17:54:19Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/3c814105108680997d0821077694f663693b5382.zip",
           "https://github.com/abseil/abseil-cpp/archive/3c814105108680997d0821077694f663693b5382.zip"
      ],
      strip_prefix = "abseil-cpp-3c814105108680997d0821077694f663693b5382",
      sha256 = "4bdb45ca33f5b437d5ccfabea8c26cfe9570031d7bddeabebd5df51800535cb5",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-02-13T18:52:14Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/23b2a3b1cf803999fb38175f6e9e038a4495c8a5.zip",
           "https://github.com/google/googletest/archive/23b2a3b1cf803999fb38175f6e9e038a4495c8a5.zip"
      ],
      strip_prefix = "googletest-23b2a3b1cf803999fb38175f6e9e038a4495c8a5",
      sha256 = "11d71c27a79346747c74f470c46e6c4d4ab764e3a2507b38ab1f7eba265fc986",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-02-18T12:04:45Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/168604d8f8e84c1f991de85f1a723c0df9a5b944.zip",
           "https://github.com/google/benchmark/archive/168604d8f8e84c1f991de85f1a723c0df9a5b944.zip"
      ],
      strip_prefix = "benchmark-168604d8f8e84c1f991de85f1a723c0df9a5b944",
      sha256 = "1c21db42e0aac9c15ca3c6a7179c966c1f7916d7a573462a85b2eb72197997c7",
    )

    # ********** zlib (pinned to 1.2.11) *****************
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://zlib.net/zlib-1.2.11.tar.gz",
          "https://zlib.net/zlib-1.2.11.tar.gz"
      ],
    )
