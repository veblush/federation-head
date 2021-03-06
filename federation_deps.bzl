"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-06-03T07:53:38Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip",
           "https://github.com/bazelbuild/rules_cc/archive/5cbd3dfbd1613f71ef29bbb7b10310b81e272975.zip"
      ],
      strip_prefix = "rules_cc-5cbd3dfbd1613f71ef29bbb7b10310b81e272975",
      sha256 = "d6775fe03da086dfe47c668f54e77e220aa6e601a66a4517eaf19fa1d9fda309",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2020-06-12T14:45:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/c82a8cc1f44ba6e81c65e801b1ec3e4f3852359e.zip",
           "https://github.com/bazelbuild/rules_python/archive/c82a8cc1f44ba6e81c65e801b1ec3e4f3852359e.zip"
      ],
      strip_prefix = "rules_python-c82a8cc1f44ba6e81c65e801b1ec3e4f3852359e",
      sha256 = "877537a37b3c17cbd84cdc1d1892a22fa185b8298d3a1ab301c5dbff42480cf5",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-06-22T18:04:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/10cb35e459f5ecca5b2ff107635da0bfa41011b4.zip",
           "https://github.com/abseil/abseil-cpp/archive/10cb35e459f5ecca5b2ff107635da0bfa41011b4.zip"
      ],
      strip_prefix = "abseil-cpp-10cb35e459f5ecca5b2ff107635da0bfa41011b4",
      sha256 = "95b78ca065ad52166ab69f8328e04c6b92cda02c28eaa13a5287ae330601b644",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-06-18T20:09:35Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/c6e309b268d4fb9138bed7d0f56b7709c29f102f.zip",
           "https://github.com/google/googletest/archive/c6e309b268d4fb9138bed7d0f56b7709c29f102f.zip"
      ],
      strip_prefix = "googletest-c6e309b268d4fb9138bed7d0f56b7709c29f102f",
      sha256 = "ac0b859e4c28af555657c7702523465756eb56f8606bf53e62fd934c86b5fa5f",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-06-17T11:58:12Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/15e6dfd7182b74b4fb6860f52fe314d0654307fb.zip",
           "https://github.com/google/benchmark/archive/15e6dfd7182b74b4fb6860f52fe314d0654307fb.zip"
      ],
      strip_prefix = "benchmark-15e6dfd7182b74b4fb6860f52fe314d0654307fb",
      sha256 = "b41f0cf12fc217c69117e3a492059dea260dc1a57cfb8ddc11cfcada8dac411a",
    )

    # ********** com_github_google_tcmalloc *****************
    http_archive(
      name = "com_github_google_tcmalloc",  # 2020-06-23T03:01:46Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/tcmalloc/archive/4ff9fa2c34bef592da7367ccd5d9486dc5bcdbde.zip",
           "https://github.com/google/tcmalloc/archive/4ff9fa2c34bef592da7367ccd5d9486dc5bcdbde.zip"
      ],
      strip_prefix = "tcmalloc-4ff9fa2c34bef592da7367ccd5d9486dc5bcdbde",
      sha256 = "8c1947474e01d1c42990d288d752155e9f1d15b4293d7ce4919a915b36e2a8c7",
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
