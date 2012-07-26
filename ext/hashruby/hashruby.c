#include "hash.h"
#include "llist.h"
#include "ruby.h"

static VALUE    hr_init(VALUE self)
{
  hash_t  *hashtabl;

  hashtabl = hash_init(128);
  rb_iv_set(self, "@arr", (VALUE)hashtabl);

  return self;
}

static VALUE    hr_set(VALUE self, VALUE hashKey, VALUE anObject)
{
  hash_t  *hashtabl;

  hashtabl = (hash_t *)rb_iv_get(self, "@arr");
  hash_set((hash_t *)hashtabl, (char *)hashKey, (char *)anObject);

  return Qnil;
}

static VALUE    hr_get(VALUE self, VALUE hashKey)
{
  hash_t  *hashtabl;

  hashtabl = (hash_t *)rb_iv_get(self, "@arr");
  
  return hash_get(hashtabl, (char *)hashKey);
}

static VALUE    hr_remove(VALUE self, VALUE hashKey)
{
  hash_t  *hashtabl;

  hashtabl = (hash_t *)rb_iv_get(self, "@arr");
  
  hash_remove(hashtabl, (char *)hashKey);

  return  Qnil; 
}

VALUE myArray;

void Init_hashruby() {
  myArray = rb_define_class("HashRuby", rb_cObject);
  rb_define_method(myArray, "initialize", hr_init, 0);
  rb_define_method(myArray, "set", hr_set, 2);
  rb_define_method(myArray, "get", hr_get, 1);
  rb_define_method(myArray, "remove", hr_remove, 1);

}
