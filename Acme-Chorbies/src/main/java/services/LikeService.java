
package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.LikeRepository;
import domain.Like;

@Service
@Transactional
public class LikeService {

	@Autowired
	private LikeRepository	likeRepository;


	public LikeService() {
		super();
	}

	// Simple CRUD methods ----------------------------------------------------

	public Like create() {
		Like result;

		result = new Like();
		return result;
	}

	public Collection<Like> findAll() {
		Collection<Like> result;

		result = this.likeRepository.findAll();
		Assert.notNull(result);

		return result;
	}

	public Like findOne(final int likeId) {
		Like result;

		result = this.likeRepository.findOne(likeId);

		return result;
	}

	public Like save(final Like like) {
		Assert.notNull(like);

		return this.likeRepository.save(like);
	}

	public void delete(final Like like) {
		Assert.notNull(like);
		Assert.isTrue(like.getId() != 0);

		this.likeRepository.delete(like);
	}

}
