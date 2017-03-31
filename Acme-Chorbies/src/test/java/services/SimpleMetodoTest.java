
package services;

import javax.transaction.Transactional;

import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import utilities.AbstractTest;

@ContextConfiguration(locations = {
	"classpath:spring/junit.xml"
})
@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
public class SimpleMetodoTest extends AbstractTest {

	//ESTA PLANTILLA ES PARA PROBAR METODOS SENCILLOS QUE EJECUTAN UNA SIMPLE ACCION FUNCIONAL(SETEAR UNA VARIABLE,PONER UNA RELACION ETC
	/*
	 * @Autowired
	 * private CustomerService customerService;
	 * 
	 * @Autowired
	 * private PostService postService;
	 * 
	 * 
	 * //ESTA CLASE ES LA QUE EJECUTA TODAS LAS PRUEBAS PARA UN CASO DE USO AUTOMATICAMENTE PARA UN CONJUNTO DE VALORES
	 * 
	 * @Test
	 * public void driver() {
	 * //EN ESTA VARIABLE SE INTRODUCEN LOS DISTINTOS VALORES PARA CADA PRUEBA
	 * //TAMBIEN HAY QUE INTRODUCIR LA EXCEPCION QUE ESPERAMOS(SI NINGUNA ENTONCES NULL)
	 * Object testingData[][] = {
	 * {
	 * "customer1", null
	 * }, {
	 * null, IllegalArgumentException.class
	 * }, {
	 * "customer8", IllegalArgumentException.class
	 * }
	 * };
	 * 
	 * for (int i = 0; i < testingData.length; i++) {
	 * //EN ESTA LLAMADA SE MANDAN LOS DATOS AL TEST,PUEDE INTRODUCIRSE CUALQUIER TIPO DE DATO PERO SIEMPRE CON CASTING
	 * template((String) testingData[i][0], (Class<?>) testingData[i][1]);
	 * }
	 * }
	 * 
	 * //TEST QUE SE REALIZA
	 * protected void template(String username, Class<?> expected) {
	 * Class<?> caught;
	 * 
	 * caught = null;
	 * try {
	 * //AQUI SE DEBE INTRODUCIR NUESTRO TEST DE FORMA QUE USE EL METODO DEL SERVICIO CORRESPONDIENTE
	 * //AUTHENTICARSE COMO EL ACTOR PASADO COMO VARIABLE, PASAR ROLES SIN EL PRIVILEGIO NECESARIO TAMBIEN SON TESTS
	 * authenticate(username);
	 * postService.createOffer();
	 * unauthenticate();
	 * } catch (Throwable oops) {
	 * caught = oops.getClass();
	 * }
	 * //COMPROBAR SI NOS HA DADO LA EXCEPCION QUE ESPERABAMOS(NNO SE TOCA)
	 * checkExceptions(expected, caught);
	 * }
	 */
}
