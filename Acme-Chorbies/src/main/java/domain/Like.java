
package domain;

import java.util.Date;

public class Like extends DomainEntity {

	public Like() {
		super();
	}


	private Date	moment;
	private String	comment;


	public Date getMoment() {
		return this.moment;
	}

	public void setMoment(final Date moment) {
		this.moment = moment;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(final String comment) {
		this.comment = comment;
	}

}
