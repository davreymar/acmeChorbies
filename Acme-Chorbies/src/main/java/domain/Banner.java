
package domain;

import org.hibernate.validator.constraints.NotBlank;

public class Banner extends DomainEntity {

	public Banner() {
		super();
	}


	private String	text;


	@NotBlank
	public String getText() {
		return this.text;
	}

	public void setText(final String text) {
		this.text = text;
	}

}
