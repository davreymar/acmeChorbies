
package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.CoordinatesRepository;
import domain.Coordinates;

@Service
@Transactional
public class CoordinatesService {

	@Autowired
	private CoordinatesRepository	coordinatesRepository;


	public CoordinatesService() {
		super();
	}

	// Simple CRUD methods ----------------------------------------------------

	public Coordinates create() {
		Coordinates result;

		result = new Coordinates();
		return result;
	}

	public Collection<Coordinates> findAll() {
		Collection<Coordinates> result;

		result = this.coordinatesRepository.findAll();
		Assert.notNull(result);

		return result;
	}

	public Coordinates findOne(final int coordinatesId) {
		Coordinates result;

		result = this.coordinatesRepository.findOne(coordinatesId);

		return result;
	}

	public Coordinates save(final Coordinates coordinates) {
		Assert.notNull(coordinates);

		return this.coordinatesRepository.save(coordinates);
	}

	public void delete(final Coordinates coordinates) {
		Assert.notNull(coordinates);
		Assert.isTrue(coordinates.getId() != 0);

		this.coordinatesRepository.delete(coordinates);
	}

}
