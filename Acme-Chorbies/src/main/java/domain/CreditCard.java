
package domain;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;

import enums.BrandNameEnum;

public class CreditCard extends DomainEntity {

	public CreditCard() {
		super();
	}


	private String			holderName;
	private BrandNameEnum	brandName;
	private Integer			number;
	private int				expirationMonth;
	private int				expirationYear;
	private int				cvvCode;


	@NotBlank
	public String getHolderName() {
		return this.holderName;
	}

	public void setHolderName(final String holderName) {
		this.holderName = holderName;
	}
	@NotNull
	public BrandNameEnum getBrandName() {
		return this.brandName;
	}

	public void setBrandName(final BrandNameEnum brandName) {
		this.brandName = brandName;
	}
	@NotNull
	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(final Integer number) {
		this.number = number;
	}
	@Range(min = 1, max = 12)
	public int getExpirationMonth() {
		return this.expirationMonth;
	}

	public void setExpirationMonth(final int expirationMonth) {
		this.expirationMonth = expirationMonth;
	}
	@Range(min = 0, max = 99)
	public int getExpirationYear() {
		return this.expirationYear;
	}

	public void setExpirationYear(final int expirationYear) {
		this.expirationYear = expirationYear;
	}
	@Range(min = 100, max = 999)
	public int getCvvCode() {
		return this.cvvCode;
	}

	public void setCvvCode(final int cvvCode) {
		this.cvvCode = cvvCode;
	}

}
