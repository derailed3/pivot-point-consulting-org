---
title: "Information Security Policy"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "policy"
tags: ["policy", "security", "information-security", "hipaa", "hitrust", "soc2", "compliance"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
controls:
  hitrust: ["01.a", "06.a", "09.a"]
  soc2: ["CC1.1", "CC5.1", "CC6.1"]
retention-until: "2032-01-30"
---

# Information Security Policy

## 1. Purpose

The purpose of this policy is to establish the overarching information security framework for Pivot Point Consulting. This policy defines the principles, requirements, and responsibilities for protecting the confidentiality, integrity, and availability of all information assets, with particular emphasis on Protected Health Information (PHI) and electronic Protected Health Information (ePHI) handled in the course of healthcare IT consulting engagements.

This policy serves as the foundation of Pivot Point Consulting's information security program and provides the basis for all subordinate security policies, standards, and procedures.

## 2. Scope

This policy applies to:

- All information assets owned, leased, or managed by Pivot Point Consulting, including data, systems, networks, applications, and physical infrastructure.
- All workforce members, including employees, contractors, consultants, interns, and temporary staff.
- All third parties with access to Pivot Point Consulting information assets or systems.
- All physical and virtual environments used for Pivot Point Consulting business, including offices, client sites, remote work locations, and cloud environments.
- All consulting engagements, regardless of whether they involve PHI.

## 3. Information Security Principles

### 3.1 CIA Triad

Pivot Point Consulting's information security program is built upon three foundational principles:

**Confidentiality**: Ensuring that information is accessible only to those authorized to have access. This includes protecting PHI, client data, intellectual property, and other sensitive information from unauthorized disclosure.

**Integrity**: Safeguarding the accuracy and completeness of information and processing methods. This includes protecting data from unauthorized modification, ensuring the reliability of systems and processes, and maintaining audit trails.

**Availability**: Ensuring that authorized users have access to information and associated assets when required. This includes maintaining system uptime, implementing disaster recovery capabilities, and preventing denial-of-service conditions.

### 3.2 Defense in Depth

Pivot Point Consulting implements multiple layers of security controls (administrative, physical, and technical) to protect information assets. No single control is relied upon for protection; rather, overlapping controls provide comprehensive defense against threats.

### 3.3 Least Privilege

Access to information and systems is granted based on the minimum level of access necessary for a workforce member to perform their assigned duties. Elevated access is granted only when required and is subject to additional monitoring and review.

### 3.4 Separation of Duties

Critical functions are divided among different individuals to reduce the risk of fraud, error, or misuse. Where full separation is not possible due to organizational size, compensating controls such as enhanced monitoring and review are implemented.

## 4. Acceptable Use

### 4.1 General Requirements

All workforce members shall:

- Use Pivot Point Consulting information assets only for authorized business purposes.
- Protect information assets from unauthorized access, use, disclosure, modification, or destruction.
- Comply with all applicable laws, regulations, and contractual obligations.
- Not use information assets for illegal activities, harassment, or any purpose that could harm Pivot Point Consulting or its clients.

### 4.2 Prohibited Activities

The following activities are prohibited:

- Unauthorized access to or use of information systems, data, or networks.
- Sharing authentication credentials with others.
- Installing unauthorized software on company-managed devices.
- Circumventing or disabling security controls.
- Using company resources for personal financial gain.
- Storing or transmitting PHI on unapproved systems or services.
- Connecting unauthorized devices to Pivot Point Consulting's network.
- Using peer-to-peer file sharing applications on company networks or devices.
- Engaging in any activity that could compromise the security of client systems or data.

### 4.3 Personal Use

Limited personal use of Pivot Point Consulting information assets is permitted provided that it does not interfere with business operations, does not violate any policies, and does not consume significant resources. Personal use does not create any expectation of privacy on company systems.

## 5. Access Control

### 5.1 Least Privilege

- Access to all systems and data shall be granted based on the principle of least privilege.
- Users shall be assigned the minimum permissions necessary to perform their job functions.
- Elevated or administrative access shall be limited to personnel who require it and shall be subject to enhanced monitoring.

### 5.2 Role-Based Access Control (RBAC)

- Access to systems and data shall be managed through role-based access control.
- Access roles shall be defined based on job functions and engagement requirements.
- Standard access roles include: [PLACEHOLDER: list of standard roles, e.g., Administrator, Engagement Consultant, Read-Only, etc.].
- Role assignments shall be reviewed at least [PLACEHOLDER: frequency, e.g., quarterly].

### 5.3 Access Provisioning and Deprovisioning

- Access requests shall be submitted through [PLACEHOLDER: access request system] and approved by the appropriate manager and system owner.
- Access shall be provisioned within [PLACEHOLDER: number] business days of approval.
- Access shall be revoked within [PLACEHOLDER: number] hours of employment termination or engagement completion.
- Access shall be modified within [PLACEHOLDER: number] business days of a role change.

### 5.4 Access Reviews

- Access rights shall be reviewed at least [PLACEHOLDER: frequency, e.g., quarterly] for systems containing PHI and at least [PLACEHOLDER: frequency, e.g., semi-annually] for all other systems.
- Access reviews shall verify that current access is appropriate for each user's role and responsibilities.
- Identified discrepancies shall be remediated within [PLACEHOLDER: number] business days.

### 5.5 Privileged Access Management

- Privileged accounts shall be inventoried, monitored, and reviewed at least [PLACEHOLDER: frequency].
- Privileged access shall use unique named accounts (not shared administrator accounts).
- Privileged sessions shall be logged and subject to periodic review.
- Just-in-time (JIT) or time-limited privileged access shall be used where technically feasible.

## 6. Password and Authentication Requirements

### 6.1 Password Policy

| Requirement | Standard |
|-------------|----------|
| Minimum length | 14 characters |
| Complexity | At least three of: uppercase, lowercase, numbers, special characters |
| Maximum age | [PLACEHOLDER: number] days |
| History | Cannot reuse the last [PLACEHOLDER: number] passwords |
| Lockout threshold | [PLACEHOLDER: number] failed attempts |
| Lockout duration | [PLACEHOLDER: number] minutes |

### 6.2 Multi-Factor Authentication (MFA)

MFA is required for:

- All remote access to Pivot Point Consulting systems.
- All access to systems containing PHI or ePHI.
- All administrative or privileged access.
- All access to cloud management consoles.
- All VPN connections.
- Access to email from external networks or devices.

### 6.3 Prohibited Practices

- Sharing passwords or authentication tokens with others.
- Writing passwords down or storing them in unencrypted files.
- Using the same password for Pivot Point Consulting systems and personal accounts.
- Using password hints that could reveal the password.

## 7. Network Security

### 7.1 Network Architecture

- Pivot Point Consulting's network shall be segmented to separate environments with different security requirements.
- Systems containing PHI shall be isolated in dedicated network segments with restricted access.
- Network architecture shall be documented and reviewed at least annually.
- Network diagrams shall be maintained and updated within [PLACEHOLDER: number] days of any significant change.

### 7.2 Firewalls and Network Access Control

- Firewalls shall be deployed at all network boundaries.
- Firewall rules shall follow the principle of deny by default, allow by exception.
- Firewall rules shall be reviewed at least [PLACEHOLDER: frequency, e.g., quarterly].
- Unused ports and services shall be disabled.

### 7.3 Intrusion Detection and Prevention

- Intrusion detection and/or prevention systems (IDS/IPS) shall be deployed on network segments containing PHI.
- IDS/IPS alerts shall be monitored [PLACEHOLDER: frequency, e.g., 24/7, business hours].
- IDS/IPS signatures and rules shall be updated at least [PLACEHOLDER: frequency].

### 7.4 Wireless Network Security

- Wireless networks shall use WPA3 or WPA2-Enterprise encryption.
- Guest wireless networks shall be isolated from internal networks.
- Wireless access points shall be inventoried and monitored for unauthorized access points (rogue APs).

## 8. Endpoint Security

### 8.1 Endpoint Protection

All company-managed endpoints shall have:

- Endpoint detection and response (EDR) or antivirus software installed and active.
- Automatic updates enabled for operating systems and applications.
- Full-disk encryption enabled (BitLocker, FileVault, or equivalent).
- Host-based firewall enabled.
- [PLACEHOLDER: specific endpoint protection solution] deployed and configured.

### 8.2 Patch Management

- Critical and high-severity security patches shall be applied within [PLACEHOLDER: number] days of release.
- Medium-severity patches shall be applied within [PLACEHOLDER: number] days of release.
- Low-severity patches shall be applied within [PLACEHOLDER: number] days or during the next maintenance window.
- Patch compliance shall be monitored and reported at least [PLACEHOLDER: frequency].

### 8.3 Software Management

- Only authorized software may be installed on company-managed devices.
- An approved software inventory shall be maintained by [PLACEHOLDER: role/department].
- Unauthorized software shall be detected and removed through automated tools.

## 9. Cloud Security

### 9.1 Approved Cloud Services

- Only cloud services that have been evaluated and approved by the Security Officer may be used for business purposes.
- Cloud services used to store, process, or transmit PHI must have a BAA in place.
- Approved cloud services: [PLACEHOLDER: list of approved services].

### 9.2 Cloud Security Requirements

- Cloud configurations shall follow the principle of least privilege.
- Cloud environments containing PHI shall be encrypted at rest and in transit.
- Cloud access shall require MFA.
- Cloud configurations shall be reviewed against CIS Benchmarks or equivalent standards at least [PLACEHOLDER: frequency].
- Cloud audit logs shall be enabled and retained for a minimum of [PLACEHOLDER: retention period].

### 9.3 Cloud Data Residency

- PHI shall be stored only in cloud regions within the United States unless specifically approved by the Privacy Officer and permitted by the applicable BAA.
- Data residency requirements shall be verified before provisioning cloud resources for engagements involving PHI.

## 10. Mobile Device Security

### 10.1 Company-Managed Devices

- All company-issued mobile devices shall be enrolled in a Mobile Device Management (MDM) solution ([PLACEHOLDER: MDM solution name]).
- MDM shall enforce: device encryption, passcode requirements, remote wipe capability, and application management.
- Lost or stolen devices shall be reported immediately and remotely wiped.

### 10.2 Personal Devices (BYOD)

- Personal devices may be used for Pivot Point Consulting business only with approval and enrollment in the MDM solution.
- Personal devices used to access PHI must comply with all security requirements applicable to company-managed devices.
- Pivot Point Consulting reserves the right to remotely wipe company data from personal devices.
- BYOD usage is governed by the [PLACEHOLDER: BYOD policy reference].

## 11. Incident Response

### 11.1 Incident Response Program

Pivot Point Consulting maintains an Incident Response Plan ([PLACEHOLDER: document reference]) that defines procedures for detecting, responding to, and recovering from security incidents. Key elements include:

- Incident classification and severity levels.
- Escalation procedures and communication protocols.
- Containment, eradication, and recovery procedures.
- Evidence preservation and forensic investigation procedures.
- Post-incident review and lessons learned.

### 11.2 Incident Reporting

- All workforce members are required to report suspected security incidents immediately to the Security Officer or through [PLACEHOLDER: incident reporting mechanism].
- Incidents involving PHI shall be escalated to the Privacy Officer in accordance with the Breach Notification Procedures.
- Incident reports shall be documented and retained for a minimum of six (6) years.

### 11.3 Incident Response Testing

- The Incident Response Plan shall be tested at least annually through tabletop exercises or simulations.
- Test results shall be documented and used to improve the plan.

## 12. Risk Management

### 12.1 Risk Assessment

- Comprehensive risk assessments shall be conducted at least annually and whenever significant changes occur to the organization, technology, or regulatory environment.
- Risk assessments shall identify threats, vulnerabilities, and potential impacts to information assets.
- Risk assessment methodology shall be aligned with NIST SP 800-30 or equivalent framework.

### 12.2 Risk Treatment

Identified risks shall be treated through one of the following strategies:

- **Mitigate**: Implement controls to reduce the risk to an acceptable level.
- **Transfer**: Transfer the risk to a third party (e.g., through insurance or contractual arrangements).
- **Accept**: Formally accept the risk with documented approval from [PLACEHOLDER: approval authority].
- **Avoid**: Eliminate the risk by discontinuing the activity that creates the risk.

### 12.3 Risk Register

- A risk register shall be maintained documenting all identified risks, risk ratings, treatment decisions, and responsible parties.
- The risk register shall be reviewed at least quarterly by the Security Officer and [PLACEHOLDER: executive title/committee].

## 13. Security Awareness Training

### 13.1 Training Program

- All workforce members shall complete security awareness training within [PLACEHOLDER: number] days of hire and annually thereafter.
- Training shall cover: information security policies, phishing awareness, social engineering, password security, PHI handling, incident reporting, physical security, and remote work security.
- Additional role-based training shall be provided for workforce members with elevated access or specialized security responsibilities.

### 13.2 Phishing Simulations

- Phishing simulation exercises shall be conducted at least [PLACEHOLDER: frequency, e.g., quarterly].
- Workforce members who fail phishing simulations shall complete additional training within [PLACEHOLDER: number] days.
- Phishing simulation results shall be tracked and reported to [PLACEHOLDER: executive title/committee].

### 13.3 Training Records

- All training completion shall be documented and retained for a minimum of six (6) years.
- Training records shall be maintained by [PLACEHOLDER: department, e.g., HR, Security team].

## 14. Third-Party Security

### 14.1 Vendor Risk Management

- All third-party vendors with access to Pivot Point Consulting systems or data shall undergo a security risk assessment before engagement.
- Vendor risk assessments shall evaluate the vendor's security posture, compliance status, and ability to protect Pivot Point Consulting data.
- Vendors shall be categorized by risk level (High, Medium, Low) based on the type and sensitivity of data they will access.

### 14.2 Vendor Security Requirements

- Vendors with access to PHI must have a BAA in place (see BAA Management Policy).
- Vendors shall demonstrate compliance with applicable security standards through certifications (SOC 2, HITRUST), audit reports, or security questionnaires.
- Vendor security posture shall be reassessed at least annually for high-risk vendors.

### 14.3 Vendor Access

- Vendor access to Pivot Point Consulting systems shall be limited to the minimum necessary.
- Vendor access shall be time-limited and revoked upon completion of the vendor's services.
- Vendor access shall be monitored and logged.

## 15. Compliance

### 15.1 HIPAA

Pivot Point Consulting maintains compliance with the HIPAA Privacy Rule, Security Rule, and Breach Notification Rule. Detailed HIPAA compliance requirements are defined in the HIPAA Privacy Rule Compliance Policy, HIPAA Security Rule Compliance Policy, and HIPAA Breach Notification Procedures.

### 15.2 HITRUST

Pivot Point Consulting aligns its information security program with the HITRUST Common Security Framework (CSF). HITRUST control mappings are maintained for all security policies and are subject to periodic assessment and certification.

### 15.3 SOC 2

Pivot Point Consulting maintains compliance with SOC 2 Trust Services Criteria (Security, Availability, Confidentiality, and Privacy). SOC 2 Type II assessments are conducted [PLACEHOLDER: frequency, e.g., annually] by an independent auditor.

### 15.4 Other Regulatory Requirements

Pivot Point Consulting monitors and complies with other applicable regulatory requirements, including but not limited to:

- State privacy and breach notification laws.
- 42 CFR Part 2 (substance abuse treatment records), where applicable.
- Client-specific compliance requirements.

## 16. Roles and Responsibilities

### 16.1 Chief Information Security Officer (CISO) / Security Officer

The CISO/Security Officer ([PLACEHOLDER: Name/Title]) is responsible for:

- Overseeing the information security program.
- Developing and maintaining security policies, standards, and procedures.
- Conducting risk assessments and managing the risk register.
- Managing the incident response program.
- Coordinating security awareness training.
- Reporting security posture and compliance status to [PLACEHOLDER: executive title/committee].
- Evaluating and approving new technologies and vendors.
- Managing the vulnerability management program.

### 16.2 IT Operations

IT Operations is responsible for:

- Implementing and operating security controls.
- Managing access control systems, firewalls, IDS/IPS, and endpoint protection.
- Monitoring security alerts and logs.
- Performing patch management and system hardening.
- Managing backup and disaster recovery systems.
- Maintaining network and system documentation.

### 16.3 Workforce Members

All workforce members are responsible for:

- Complying with all information security policies and procedures.
- Completing required security training.
- Reporting security incidents and vulnerabilities.
- Protecting their credentials and devices.
- Applying security best practices in daily work.

### 16.4 Executive Leadership

Executive leadership is responsible for:

- Providing resources and support for the information security program.
- Setting the tone for security culture within the organization.
- Reviewing and approving security policies.
- Accepting residual risks on behalf of the organization.
- Ensuring security is integrated into business strategy and planning.

## 17. Revision History

| Version | Date | Author | Changes | Approved By |
|---------|------|--------|---------|-------------|
| 1.0 | 2026-01-30 | Pivot Point Consulting | Initial policy creation | [PLACEHOLDER: Approver Name/Title] |
| | | | | |
| | | | | |
