
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
public class FindMetodoTest extends AbstractTest {

	/*
	 * //ESTA PLANTILLA ES PARA PROBAR METODOS QUE REALIZAN UNA ENTRADA DE UN NUEVO OBJETO A LA BASE DE DATOS
	 * 
	 * @Autowired
	 * private CustomerService customerService;
	 * 
	 * 
	 * //ESTA CLASE ES LA QUE EJECUTA TODAS LAS PRUEBAS PARA UN CASO DE USO AUTOMATICAMENTE, EN ESTE TIPO DE CASOS HAY QUE BUSCAR EN LA BASE DE DATOS Y COMPROBAR MANUALMENTE
	 * //QUE LOS DATOS SON LOS BUSCADOS
	 * 
	 * @Test
	 * public void driver() {
	 * //EN ESTA VARIABLE SE INTRODUCEN LOS DISTINTOS VALORES PARA CADA PRUEBA
	 * //EN ESTE CASO VALE CON UNA PROPIEDAD REPRESENTATIVA DEL OBJETO BUSCADO
	 * //TAMBIEN HAY QUE INTRODUCIR LA EXCEPCION QUE ESPERAMOS(SI NINGUNA ENTONCES NULL)
	 * Object testingData[][] = {
	 * {
	 * "customer1", "customerId", null
	 * }, {
	 * "customer2", "customerId", null
	 * }, {
	 * "customer3", "badCustomerId", IllegalArgumentException.class
	 * }
	 * //ETC
	 * };
	 * 
	 * for (int i = 0; i < testingData.length; i++) {
	 * //EN ESTA LLAMADA SE MANDAN LOS DATOS AL TEST,PUEDE INTRODUCIRSE CUALQUIER TIPO DE DATO PERO SIEMPRE CON CASTING
	 * template((String) testingData[i][0], (int) testingData[i][1], (Class<?>) testingData[i][5]);
	 * }
	 * }
	 * 
	 * //TEST QUE SE REALIZA
	 * protected void template(String username, int customerId, Class<?> expected) {
	 * Class<?> caught;
	 * 
	 * caught = null;
	 * try {
	 * //AQUI SE DEBE INTRODUCIR NUESTRO TEST DE FORMA QUE USE EL METODO DEL SERVICIO CORRESPONDIENTE
	 * Customer customer = customerService.findOne(customerId);
	 * if (customer == null || customer.getUserAccount().getUsername() != username) {
	 * throw new IllegalArgumentException();
	 * }
	 * } catch (Throwable oops) {
	 * caught = oops.getClass();
	 * }
	 * //COMPROBAR SI NOS HA DADO LA EXCEPCION QUE ESPERABAMOS(NO SE TOCA)
	 * checkExceptions(expected, caught);
	 * }
	 */
}
