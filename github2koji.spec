#
# Spec file for github2koji app...
#
Summary: A dummy package
Name: github2koji
Version: 1.0
Release: 1
License: GPL
Source: github2koji-%{version}.tar.gz

%description
A dummy package

%prep
%setup

%build
make

%install
%{__rm} -rf $RPM_BUILD_ROOT
%{__mkdir_p} $RPM_BUILD_ROOT%{_bindir}
cp github2koji $RPM_BUILD_ROOT%{_bindir}

%files
%{_bindir}/github2koji
