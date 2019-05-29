Name:           rhcos-tools
Version:        0.0.0
Release:        1.rhaos4.2%{?dist}
Summary:        A collection of small tools for RHCOS

License:        MIT
URL:            https://github.com/openshift/rhcos-tools
Source0:        %{version}.tar.gz
BuildArch:      noarch

%description
A collection of small tools used for RHCOS.


%prep
%autosetup


%build
# Nothing to build


%install
rm -rf $RPM_BUILD_ROOT
PREFIX=$RPM_BUILD_ROOT %make_install


%files
%license LICENSE COPYING
%doc README.md
%{_libexecdir}/%{name}/coreos-fips


%changelog
* Tue May 21 2019 Steve Milner <smilner@redhat.com> 0.0.0-1.rhaos4.2
- Initial package
