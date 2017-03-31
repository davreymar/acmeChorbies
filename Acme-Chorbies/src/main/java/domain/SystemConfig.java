
package domain;

import org.hibernate.validator.constraints.Range;

public class SystemConfig extends DomainEntity {

	public SystemConfig() {
		super();
	}


	private int	hoursCached;
	private int	minutesCached;
	private int	secondCached;


	public int getHoursCached() {
		return this.hoursCached;
	}

	public void setHoursCached(final int hoursCached) {
		this.hoursCached = hoursCached;
	}
	@Range(min = 0, max = 60)
	public int getMinutesCached() {
		return this.minutesCached;
	}

	public void setMinutesCached(final int minutesCached) {
		this.minutesCached = minutesCached;
	}
	@Range(min = 0, max = 60)
	public int getSecondCached() {
		return this.secondCached;
	}

	public void setSecondCached(final int secondCached) {
		this.secondCached = secondCached;
	}

}
