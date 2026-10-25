import { Page, Locator, expect } from '@playwright/test';

export class CldcPageFacility {
  readonly page: Page;

  // Tabs and sections
  readonly dealOverviewTab: Locator;
  readonly dealDetailsTab: Locator;
  readonly dealSummarySection: Locator;
  readonly eventHistorySection: Locator;

  // Event buttons
  readonly submitToCheckerButton: Locator;
  readonly initiateEventButton: Locator;
  readonly approveButton: Locator;
  readonly saveButton: Locator;

  constructor(page: Page) {
    this.page = page;

    this.dealOverviewTab = page.getByRole('tab', {
      name: 'Deal Overview',
    });

    this.dealDetailsTab = page.getByRole('tab', {
      name: 'Deal Details',
    });

    this.dealSummarySection = page.getByText('Deal Summary', {
      exact: true,
    });

    this.eventHistorySection = page.getByText('Event History', {
      exact: true,
    });

    this.submitToCheckerButton = page.getByRole('button', {
      name: 'Submit to Checker',
    });

    this.initiateEventButton = page.getByRole('button', {
      name: 'Initiate Event',
    });

    this.approveButton = page.getByRole('button', {
      name: /approve/i,
    });

    this.saveButton = page.getByRole('button', {
      name: 'Save',
      exact: true,
    });
  }

  async navigateToDealOverview(): Promise<void> {
    await this.dealOverviewTab.click();
    await expect(this.dealOverviewTab).toHaveAttribute(
      'aria-selected',
      'true',
    );
  }

  async navigateToDealDetails(): Promise<void> {
    await this.dealDetailsTab.click();
    await expect(this.dealDetailsTab).toHaveAttribute(
      'aria-selected',
      'true',
    );
  }

  async verifyDealSummaryVisible(): Promise<void> {
    await expect(this.dealSummarySection).toBeVisible();
  }

  async verifyButtonEnabled(button: Locator): Promise<void> {
    await expect(button).toBeEnabled();
  }

  async verifyButtonDisabled(button: Locator): Promise<void> {
    await expect(button).toBeDisabled();
  }

  async saveChanges(): Promise<void> {
    await this.saveButton.click();
  }

  async approveEvent(): Promise<void> {
    await this.approveButton.click();
  }

  async verifyEventHistoryVisible(): Promise<void> {
    await expect(this.eventHistorySection).toBeVisible();
  }
}