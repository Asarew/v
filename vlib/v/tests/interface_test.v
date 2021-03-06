
struct Dog {
	breed string
}

struct Cat {
	breed string
}

fn (mut c Cat) name() string {
	assert c.breed == 'Persian'
	return 'Cat'
}

fn (c &Cat) speak(s string) {
	assert c.breed == 'Persian'
	assert s == 'Hi !'
	println('meow')
}

fn (d Dog) speak(s string) {
	assert s == 'Hi !'
	println('woof')
}

fn (d Dog) name() string {
	assert d.breed == 'Labrador Retriever'
	return 'Dog'
}

fn test_todo() {
	if true {}
	//
	else{}
}

fn perform_speak(s Animal) {
	s.speak('Hi !')
	assert true
	name := s.name()
	assert name == 'Dog' || name == 'Cat'
	//if s is Dog {
		//assert name == 'Dog'
	//}
	println(s.name())
}

fn test_perform_speak() {
	dog := Dog{breed: 'Labrador Retriever'}
	perform_speak(dog)
	cat := Cat{breed: 'Persian'}
	perform_speak(cat)
	perform_speak(Cat{breed: 'Persian'})
	handle_animals([dog, cat])
	/*
	f := Foo {
		speaker: dog
	}
*/
}

fn handle_animals(a []Animal) {}

interface Register {
	register()
}

struct RegTest {
	a int
}

fn (f RegTest) register() {}

fn handle_reg(r Register) {}

fn test_register() {
	f := RegTest{}
	f.register()
	handle_reg(f)
}

interface Speaker2 {
	name() string
	speak()
}


struct Foo {
	animal Animal
	animals []Animal
}

interface Animal {
	name() string
	speak(s string)
}

fn test_interface_array() {
	mut animals := []Animal{}
	animals = [ Cat{}, Dog{} ]
	animals << Cat{}
	assert true
	assert animals.len == 3
}
