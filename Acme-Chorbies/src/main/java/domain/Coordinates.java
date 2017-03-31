
package domain;

import org.hibernate.validator.constraints.NotBlank;

public class Coordinates extends DomainEntity {

	public Coordinates() {
		super();
	}


	private String	country;
	private String	state;
	private String	province;
	private String	city;


	public String getCountry() {
		return this.country;
	}

	public void setCountry(final String country) {
		this.country = country;
	}

	public String getState() {
		return this.state;
	}

	public void setState(final String state) {
		this.state = state;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(final String province) {
		this.province = province;
	}
	@NotBlank
	public String getCity() {
		return this.city;
	}

	public void setCity(final String city) {
		this.city = city;
	}

}
