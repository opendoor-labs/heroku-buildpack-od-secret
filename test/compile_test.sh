#!/bin/sh

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile()
{
  compile

  assertContains "-----> Fetching and vendoring od-secret" "`cat ${STD_OUT}`"
  assertTrue "Should have installed ourselved in build dir: `ls -la ${BUILD_DIR}`" "[ -f ${BUILD_DIR}/vendor/od-secret/od-secret-env ]"
}
