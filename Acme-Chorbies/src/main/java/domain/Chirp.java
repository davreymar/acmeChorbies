
package domain;

import java.util.ArrayList;
import java.util.Date;

import org.hibernate.validator.constraints.NotBlank;

public class Chirp extends DomainEntity {

	public Chirp() {
		super();
		this.attachments = new ArrayList<String>();
	}


	private Date				moment;
	private String				subject;
	private String				text;
	private ArrayList<String>	attachments;


	public Date getMoment() {
		return this.moment;
	}

	public void setMoment(final Date moment) {
		this.moment = moment;
	}
	@NotBlank
	public String getSubject() {
		return this.subject;
	}

	public void setSubject(final String subject) {
		this.subject = subject;
	}
	@NotBlank
	public String getText() {
		return this.text;
	}

	public void setText(final String text) {
		this.text = text;
	}

	public ArrayList<String> getAttachments() {
		return this.attachments;
	}

	public void setAttachments(final ArrayList<String> attachments) {
		this.attachments = attachments;
	}
}
