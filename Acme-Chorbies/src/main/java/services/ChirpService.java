
package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.ChirpRepository;
import domain.Chirp;

@Service
@Transactional
public class ChirpService {

	@Autowired
	private ChirpRepository	chirpRepository;


	public ChirpService() {
		super();
	}

	// Simple CRUD methods ----------------------------------------------------

	public Chirp create() {
		Chirp result;

		result = new Chirp();
		return result;
	}

	public Collection<Chirp> findAll() {
		Collection<Chirp> result;

		result = this.chirpRepository.findAll();
		Assert.notNull(result);

		return result;
	}

	public Chirp findOne(final int chirpId) {
		Chirp result;

		result = this.chirpRepository.findOne(chirpId);

		return result;
	}

	public Chirp save(final Chirp chirp) {
		Assert.notNull(chirp);

		return this.chirpRepository.save(chirp);
	}

	public void delete(final Chirp chirp) {
		Assert.notNull(chirp);
		Assert.isTrue(chirp.getId() != 0);

		this.chirpRepository.delete(chirp);
	}

}
