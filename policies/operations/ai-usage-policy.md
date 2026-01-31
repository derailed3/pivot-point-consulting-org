---
title: "AI Usage Policy"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "policy"
tags: ["policy", "ai", "artificial-intelligence", "operations", "compliance", "phi", "security", "claude"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
controls:
  hitrust: ["06.d", "09.ab"]
  soc2: ["CC6.1", "CC7.1"]
retention-until: "2032-01-30"
---

# AI Usage Policy

## 1. Purpose

The purpose of this policy is to establish Pivot Point Consulting's requirements, guidelines, and governance framework for the use of Artificial Intelligence (AI) tools, large language models (LLMs), and AI-powered services in the course of business operations and consulting engagements. As a healthcare IT consulting firm operating under HIPAA, HITRUST, and SOC 2 compliance requirements, Pivot Point Consulting must ensure that AI usage does not compromise the security, privacy, or integrity of Protected Health Information (PHI), client data, or proprietary information.

This policy balances the productivity benefits of AI tools with the critical need to protect sensitive healthcare data and maintain regulatory compliance. AI is a powerful tool that, when used responsibly, can enhance the quality and efficiency of our consulting services. However, improper use of AI tools can create significant compliance, legal, and reputational risks.

## 2. Scope

This policy applies to:

- All Pivot Point Consulting workforce members, including employees, contractors, consultants, interns, and temporary staff.
- All AI tools, large language models (LLMs), generative AI services, machine learning platforms, and AI-powered features within existing software.
- All uses of AI for business purposes, including document generation, code development, research, data analysis, communication drafting, and decision support.
- Both company-approved AI tools and personal AI tool usage for work purposes.
- AI tools embedded in client systems that Pivot Point Consulting workforce members may interact with during engagements.

## 3. Approved AI Tools

### 3.1 Approved Tools and Models

The following AI tools and models are approved for use at Pivot Point Consulting, subject to the restrictions and requirements in this policy:

| Tool / Model | Approved Version(s) | Approved Use Cases | Restrictions |
|-------------|---------------------|-------------------|-------------|
| Claude Code (Anthropic) | Claude Opus 4.5 (claude-opus-4-5-20251101), Claude Sonnet 4 | Code development, document generation, research, analysis | No PHI; no proprietary client data without approval |
| [PLACEHOLDER: AI Tool 2] | [PLACEHOLDER: version] | [PLACEHOLDER: use cases] | [PLACEHOLDER: restrictions] |
| [PLACEHOLDER: AI Tool 3] | [PLACEHOLDER: version] | [PLACEHOLDER: use cases] | [PLACEHOLDER: restrictions] |
| [PLACEHOLDER: AI Tool 4] | [PLACEHOLDER: version] | [PLACEHOLDER: use cases] | [PLACEHOLDER: restrictions] |

### 3.2 Unapproved Tools

- Any AI tool not listed in Section 3.1 is considered unapproved and may not be used for Pivot Point Consulting business until it has been evaluated and approved through the governance process described in Section 11.
- The use of unapproved AI tools for work purposes, even on personal devices or accounts, is prohibited.
- AI features embedded in approved software (e.g., AI features in Microsoft 365, Slack, Zoom) are governed by the approval status of that specific AI feature, not the parent software. A list of approved embedded AI features is maintained at [PLACEHOLDER: location of approved AI features list].

### 3.3 Version Management

- Only approved versions of AI tools may be used. When new model versions are released, they must be evaluated and approved before adoption.
- The AI Governance Committee (Section 11) is responsible for evaluating and approving new versions.
- Workforce members shall not opt in to beta, preview, or experimental AI features without approval.

## 4. Human Review Requirements

### 4.1 Mandatory Human Review

All AI-generated content must be reviewed by a qualified human before it is:

- Delivered to a client.
- Published internally or externally.
- Used as the basis for a business decision.
- Incorporated into a deliverable, report, or recommendation.
- Submitted as part of a regulatory or compliance artifact.
- Used in a patient-facing system or workflow.

### 4.2 Review Standards

Human reviewers shall verify:

- **Accuracy**: The AI-generated content is factually correct and does not contain hallucinated information, fabricated citations, or incorrect data.
- **Completeness**: The content is complete and does not omit critical information.
- **Relevance**: The content is relevant to the intended purpose and audience.
- **Compliance**: The content does not violate any regulations, policies, or contractual obligations.
- **Bias**: The content does not contain inappropriate bias, discrimination, or stereotyping.
- **Quality**: The content meets Pivot Point Consulting's quality standards for the intended use.

### 4.3 Reviewer Qualifications

- Content reviewers must have subject matter expertise relevant to the AI-generated content.
- Regulatory and compliance content must be reviewed by personnel with appropriate compliance knowledge.
- Technical content must be reviewed by personnel with appropriate technical expertise.
- The reviewer must not rely solely on another AI tool to validate the output.

### 4.4 Documentation of Review

- For client deliverables and compliance artifacts, the human review shall be documented, including the reviewer's name, date of review, and confirmation that the review standards were met.
- Review documentation shall be retained in accordance with the applicable engagement or project documentation requirements.

## 5. PHI/ePHI Restrictions

### 5.1 Absolute Prohibition

**NEVER send, input, paste, upload, or otherwise transmit Protected Health Information (PHI) or electronic Protected Health Information (ePHI) to any AI tool, including approved AI tools.**

This prohibition is absolute and applies regardless of the purpose, even if the intent is to de-identify, analyze, summarize, or otherwise process the PHI.

### 5.2 Prohibited Data Types

The following data types shall NEVER be sent to AI tools:

| Category | Examples |
|----------|---------|
| **Patient Identifiers** | Names, dates of birth, Social Security numbers, medical record numbers, health plan IDs, addresses, phone numbers, email addresses, and all other HIPAA identifiers |
| **Clinical Data** | Diagnoses, treatment plans, medications, lab results, clinical notes, imaging results, pathology reports |
| **Financial Healthcare Data** | Insurance claims, billing records, explanation of benefits (EOBs), payment information linked to healthcare services |
| **Genetic/Genomic Data** | Genetic test results, genomic sequences, family health histories linked to identifiable individuals |
| **Mental Health/Substance Abuse** | Psychotherapy notes, substance abuse treatment records (42 CFR Part 2), mental health diagnoses linked to identifiers |
| **Biometric Data** | Fingerprints, retinal scans, voice recordings linked to health information |
| **Client System Data** | Screenshots, exports, or extracts from client EHR, billing, or other systems containing PHI |
| **De-identification Work-in-Progress** | Data undergoing de-identification that still contains identifiers |

### 5.3 Consequences of Violation

Sending PHI to an AI tool constitutes a potential HIPAA breach and will be treated as a serious policy violation. Consequences may include:

- Immediate notification to the Privacy Officer and Security Officer.
- Initiation of breach assessment procedures per the HIPAA Breach Notification Procedures.
- Disciplinary action up to and including termination.
- Notification to the affected Covered Entity client.
- Potential regulatory reporting obligations.

### 5.4 If PHI is Accidentally Sent to an AI Tool

If a workforce member accidentally sends PHI to an AI tool:

1. **Stop immediately** -- do not send additional data.
2. **Report immediately** to the Privacy Officer and Security Officer.
3. **Document** what was sent, when, to which tool, and the approximate scope of the PHI involved.
4. **Do not delete** the conversation or clear the history until instructed, as this may be needed for the breach investigation.
5. The Breach Response Team will assess the incident and determine next steps.

## 6. AI Content Disclosure

### 6.1 Disclosure Requirements

AI-assisted content shall be disclosed as follows:

| Content Type | Disclosure Requirement |
|-------------|----------------------|
| Client deliverables | Disclose if AI was used in generation; specific disclosure format per client agreement or [PLACEHOLDER: standard disclosure statement] |
| Internal documents | Note "AI-assisted" in document metadata or footer |
| Published content (blog posts, articles, presentations) | Include disclosure statement: [PLACEHOLDER: standard disclosure statement, e.g., "This content was created with AI assistance and reviewed by a qualified professional."] |
| Code and technical artifacts | Include comment indicating AI-assisted generation with review attestation |
| Regulatory/compliance documents | Disclose AI usage; ensure human expert review and sign-off |
| Email and communications | No disclosure required for routine AI assistance (grammar, drafting), unless the communication is a formal deliverable |

### 6.2 Client-Specific Requirements

- Some clients may have their own AI usage policies that impose additional disclosure requirements or restrictions.
- Engagement Managers shall review client AI policies at the start of each engagement and communicate any additional requirements to the team.
- If a client prohibits AI usage, that prohibition must be strictly followed for the engagement.

## 7. Training Data Handling

### 7.1 Proprietary Content Restrictions

Workforce members shall not submit the following to external AI tools without prior written approval from [PLACEHOLDER: approval authority]:

- Pivot Point Consulting proprietary methodologies, frameworks, or tools.
- Client proprietary information, configurations, or intellectual property.
- Unpublished research, strategies, or business plans.
- Security configurations, vulnerability assessments, or audit findings.
- Contract terms, pricing models, or competitive intelligence.
- Employee personal information beyond what is needed for routine HR queries.

### 7.2 Data Retention and Training Policies

- Before using any AI tool, workforce members shall understand the tool's data retention and training policies.
- Tools that retain input data for model training purposes require additional scrutiny and may be restricted.
- Approved tools (Section 3.1) have been evaluated for acceptable data retention practices.
- If an AI tool changes its data retention or training policies, it must be re-evaluated by the AI Governance Committee.

### 7.3 AI-Generated Data

- Data generated by AI tools is not automatically confidential or proprietary. Consider the classification of AI-generated content based on the PHI Handling and Data Classification Policy.
- AI-generated content may inadvertently incorporate patterns or information from training data; review outputs for any unintended inclusion of third-party proprietary information.

## 8. Permitted Use Cases

The following use cases are approved for AI tools, subject to all restrictions in this policy:

### 8.1 Document Generation and Editing

- Drafting policy documents, procedures, and templates (without PHI or proprietary client data).
- Editing and improving written content for clarity, grammar, and style.
- Generating standard document structures and outlines.
- Creating training materials and presentations.

### 8.2 Research and Analysis

- Researching industry trends, regulatory updates, and best practices.
- Analyzing publicly available healthcare IT information.
- Summarizing published research, guidelines, and standards.
- Generating comparative analyses of technologies, approaches, or methodologies.

### 8.3 Code Development

- Generating code for internal tools, automation, and infrastructure.
- Code review and optimization suggestions.
- Generating unit tests and test cases.
- Debugging assistance and error analysis.
- Generating documentation for code (without PHI or client-specific data).

### 8.4 Administrative and Operational

- Drafting communications and correspondence (without PHI or sensitive data).
- Scheduling assistance and meeting preparation.
- Generating project plans, task lists, and status reports (without PHI).
- Creating templates and standard operating procedures.

## 9. Prohibited Use Cases

The following use cases are strictly prohibited:

### 9.1 PHI Processing

- Any use that involves inputting, processing, or analyzing PHI or ePHI (see Section 5).
- Using AI to generate synthetic patient data based on real patient data.
- Using AI to de-identify PHI (the de-identification process itself must use approved, audited tools, not general-purpose AI).

### 9.2 Automated Decisions Affecting Patients

- Using AI tools to make or recommend clinical decisions that directly affect patient care.
- Using AI to triage, diagnose, or determine treatment for patients.
- Using AI to make eligibility, coverage, or claims adjudication decisions.
- Any AI usage that constitutes practicing medicine or providing medical advice.

### 9.3 Code Generation for Medical Devices

- Generating code for medical devices or Software as a Medical Device (SaMD) using AI tools without explicit approval from [PLACEHOLDER: approval authority] and compliance with FDA guidance on AI in medical devices.
- This prohibition includes code for devices regulated under 21 CFR Part 820 and IEC 62304.

### 9.4 Other Prohibited Uses

- Generating fraudulent, deceptive, or misleading content.
- Impersonating individuals or creating deepfake content.
- Circumventing security controls or generating malicious code.
- Generating content that violates intellectual property rights.
- Using AI to make employment decisions (hiring, firing, promotion) without human oversight.
- Using AI to generate legal opinions or advice (AI may assist in research, but legal conclusions must come from qualified counsel).

## 10. Quality Standards

### 10.1 BTV Validation Framework

All AI-generated content intended for client delivery or official use shall undergo BTV (Before, Through, Validate) validation:

**Before**:
- Define the objective clearly before using the AI tool.
- Ensure the use case is permitted under this policy.
- Verify that no PHI or prohibited data will be included in the prompt.
- Identify the qualified reviewer for the output.

**Through**:
- Use specific, well-structured prompts to generate high-quality outputs.
- Iterate on the AI output to improve quality before final review.
- Document the prompts used for significant deliverables (for reproducibility and audit purposes).

**Validate**:
- Conduct the mandatory human review (Section 4).
- Verify accuracy, including fact-checking and citation verification.
- Ensure compliance with all applicable policies and regulations.
- Confirm that the output meets the quality standards for its intended use.
- Document the validation for client deliverables and compliance artifacts.

### 10.2 Quality Metrics

[PLACEHOLDER: Define specific quality metrics for AI-generated content, such as accuracy rates, review turnaround times, and client satisfaction scores.]

### 10.3 Continuous Improvement

- AI usage patterns and quality outcomes shall be reviewed periodically to identify opportunities for improvement.
- Lessons learned from quality issues with AI-generated content shall be incorporated into training and guidance.

## 11. Governance

### 11.1 AI Governance Committee

Pivot Point Consulting shall establish an AI Governance Committee responsible for overseeing AI usage within the organization. The committee shall consist of:

| Role | Responsibility |
|------|---------------|
| **Committee Chair** ([PLACEHOLDER: Name/Title]) | Leads the committee; sets agenda; reports to executive leadership |
| **Security Officer** | Evaluates security implications of AI tools; ensures compliance with security policies |
| **Privacy Officer** | Evaluates privacy implications; ensures HIPAA compliance |
| **Legal Counsel** ([PLACEHOLDER: Name/Firm]) | Advises on legal, regulatory, and contractual implications |
| **Technology Lead** ([PLACEHOLDER: Name/Title]) | Evaluates technical capabilities and integration requirements |
| **Engagement Representative** ([PLACEHOLDER: Name/Title]) | Represents consulting engagement needs and client considerations |

### 11.2 Committee Responsibilities

The AI Governance Committee is responsible for:

- Evaluating and approving new AI tools, models, and use cases.
- Reviewing and updating this policy at least [PLACEHOLDER: frequency, e.g., semi-annually].
- Monitoring the AI regulatory landscape and updating policy as needed.
- Reviewing AI-related incidents and determining corrective actions.
- Establishing and maintaining the approved AI tools list.
- Developing AI usage training and guidance materials.
- Advising on AI-related contract provisions with clients and vendors.

### 11.3 New Tool Approval Process

Requests to use new AI tools shall follow this process:

1. **Request**: Submit a New AI Tool Request Form ([PLACEHOLDER: form location]) to the AI Governance Committee.
2. **Evaluation**: The committee evaluates the tool against the following criteria:
   - Data handling and privacy practices (data retention, training policies, geographic storage).
   - Security controls (encryption, access controls, audit logging).
   - Regulatory compliance (HIPAA, HITRUST, SOC 2 implications).
   - Terms of service and liability provisions.
   - Business need and justification.
   - Risk assessment (likelihood and impact of data exposure).
3. **Decision**: The committee approves, conditionally approves, or denies the request.
4. **Documentation**: The decision and rationale are documented and the approved tools list is updated.
5. **Communication**: The decision is communicated to the requestor and, if approved, to the broader organization.

### 11.4 Emergency Approval

In urgent situations where an AI tool is needed before the committee can convene, the Committee Chair and Security Officer may jointly grant temporary approval for up to [PLACEHOLDER: number] days, subject to full committee review.

## 12. Third-Party AI Services

### 12.1 Evaluation Requirements

Third-party AI services that will be used in the delivery of consulting services shall be evaluated for:

- **Data Privacy**: How the service handles input data (retention, training, sharing, geographic storage).
- **Security**: Encryption, access controls, audit capabilities, and incident response.
- **Compliance**: Alignment with HIPAA, HITRUST, and SOC 2 requirements.
- **BAA Availability**: Whether the vendor can execute a BAA if needed (note: a BAA does not authorize sending PHI to AI tools under this policy).
- **Terms of Service**: Data ownership, liability, indemnification, and intellectual property provisions.
- **Model Transparency**: Understanding of how the model processes data and generates outputs.

### 12.2 Client Consent

- If AI tools will be used in the delivery of consulting services to a client, the client shall be informed and their consent obtained, unless the AI usage is limited to internal productivity activities that do not involve client data.
- Client AI usage policies shall be reviewed and followed for each engagement.

### 12.3 Ongoing Monitoring

- Approved third-party AI services shall be monitored for changes in terms of service, data handling practices, and security posture.
- Material changes by an AI service provider shall trigger a re-evaluation by the AI Governance Committee.
- The AI Governance Committee shall review all approved third-party AI services at least annually.

## 13. Monitoring and Audit

### 13.1 Usage Monitoring

Pivot Point Consulting shall implement monitoring mechanisms to:

- Track AI tool usage across the organization.
- Detect unauthorized AI tool usage on company networks and devices.
- Identify potential PHI exposure in AI tool interactions.
- Monitor compliance with approved use cases and restrictions.

### 13.2 Audit Activities

| Activity | Frequency | Responsible Party |
|----------|-----------|-------------------|
| Review of approved AI tools list | [PLACEHOLDER: frequency, e.g., quarterly] | AI Governance Committee |
| AI usage compliance audit | [PLACEHOLDER: frequency, e.g., semi-annually] | Security Officer / Privacy Officer |
| Third-party AI service re-evaluation | Annually | AI Governance Committee |
| AI-related incident review | Per incident and quarterly summary | AI Governance Committee |
| Policy effectiveness review | Annually | AI Governance Committee |
| Training completion verification | Quarterly | [PLACEHOLDER: HR / Training team] |

### 13.3 Logging

- Where technically feasible, AI tool usage shall be logged, including the user, tool, timestamp, and nature of the query (without logging the full content to avoid creating new data privacy concerns).
- Logs shall be retained for a minimum of [PLACEHOLDER: retention period] and protected from unauthorized access or modification.

### 13.4 Reporting

- AI usage and compliance metrics shall be reported to [PLACEHOLDER: executive title/committee] at least [PLACEHOLDER: frequency].
- Significant AI-related incidents shall be reported immediately to the AI Governance Committee and applicable leadership.

## 14. Training

### 14.1 Required Training

All workforce members shall complete AI usage training:

- **Initial Training**: Within [PLACEHOLDER: number] days of hire or engagement start date.
- **Annual Refresher**: Annually, covering policy updates, new tools, and lessons learned.
- **Role-Specific Training**: Workforce members using AI tools in client engagements shall complete additional training on client-specific AI requirements.

### 14.2 Training Content

Training shall cover:

- This AI Usage Policy and its requirements.
- Approved and prohibited AI tools and use cases.
- PHI/ePHI restrictions and the consequences of violations.
- Human review requirements and quality standards.
- AI content disclosure requirements.
- Incident reporting procedures for AI-related violations.
- Practical examples and case studies relevant to healthcare IT consulting.

## 15. Revision History

| Version | Date | Author | Changes | Approved By |
|---------|------|--------|---------|-------------|
| 1.0 | 2026-01-30 | Pivot Point Consulting | Initial policy creation | [PLACEHOLDER: Approver Name/Title] |
| | | | | |
| | | | | |
