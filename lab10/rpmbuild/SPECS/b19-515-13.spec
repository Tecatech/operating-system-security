Name:          b19-515-13
Version:       1.0
Release:       1%{?dist}
Summary:       Dmitriy Rodionov's program
Group:         Testing
License:       GPL
URL:           https://github.com/tecatech/bash-rpm-package
Source0:       %{name}-%{version}.tar.gz
BuildRequires: /bin/rm, /bin/mkdir, /bin/cp
Requires:      /bin/bash, /usr/bin/date
BuildArch:     noarch

%description
A test package

%prep
%setup -q

%install
mkdir -p %{buildroot}%{_bindir}
install -m 755 b19-515-13 %{buildroot}%{_bindir}

%files
%{_bindir}/b19-515-13

%changelog
* Thu Mar 31 2022 Rodionov
- Added %{_bindir}/b19-515-13