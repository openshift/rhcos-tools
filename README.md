# rhcos-tools
RHCOS-related tools (such as FIPS enablement scripts, etc..), not large enough to warrant their own repo.

## FIPS
`coreos-fips` provides a single entry point for enabling or disabling FIPS on an `rpm-ostree` based system. This command should generally not be executed manually, but should be executed via another controlling application/process.

### Example
```
# /usr/libexec/rhcos-tools/coreos-fips
You must specify one of the following: enable, disable
# /usr/libexec/rhcos-tools/coreos-fips asdasdasd
You must specify one of the following: enable, disable
# /usr/libexec/rhcos-tools/coreos-fips enable
<snip/>
# systemctl reboot
```