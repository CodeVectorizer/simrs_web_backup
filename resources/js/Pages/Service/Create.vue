<template>
  <section class="section">
    <div class="section-header">
      <inertia-link :href="this.route('service.index')">
        <h1>Layanan</h1>
      </inertia-link>
    </div>
    <div class="section-body">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h4>Tambah Layanan</h4>
            </div>
            <div class="card-body">
              <form @submit.prevent="form.post(this.route('service.store'))">
                <div class="mb-3 form-group">
                  <progress
                    v-if="form.progress"
                    :value="form.progress.percentage"
                    max="100"
                  >
                    {{ form.progress.percentage }}%
                  </progress>
                  <div v-if="!src">
                    <img
                      class="mb-3"
                      style="width: 200px; height: 200px; object-fit: cover"
                      src="/assets/img/avatar/avatar-1.png"
                      alt="Default Avatar"
                    />
                  </div>
                  <div v-else>
                    <img
                      class="mb-3"
                      style="width: 200px"
                      :src="src"
                      alt="Avatar"
                    />
                  </div>
                  <input
                    type="file"
                    accept="image/"
                    @input="form.image = $event.target.files[0]"
                    ref="file"
                    hidden
                    @change="change"
                  />
                  <div v-if="form.errors.image" class="invalid-feedback">
                    {{ form.errors.image }}
                  </div>
                  <button @click="browse" type="button" class="btn btn-primary">
                    Browse
                  </button>
                </div>

                <div class="form-group">
                  <label>Title</label>
                  <input
                    type="text"
                    name="title"
                    class="form-control"
                    :class="{ 'is-invalid': form.errors.title }"
                    v-model="form.title"
                    required=""
                  />
                  <div v-if="form.errors.title" class="invalid-feedback">
                    {{ form.errors.title }}
                  </div>
                </div>
                <div class="form-group">
                  <label>Buka Hari</label>
                  <input
                    type="text"
                    name="open"
                    class="form-control"
                    :class="{ 'is-invalid': form.errors.open }"
                    v-model="form.open"
                  />
                  <div v-if="form.errors.open" class="invalid-feedback">
                    {{ form.errors.open }}
                  </div>
                </div>
                <div class="form-group">
                  <label>Buka Jam</label>
                  <input
                    type="text"
                    name="time"
                    class="form-control"
                    :class="{ 'is-invalid': form.errors.time }"
                    v-model="form.time"
                  />
                  <div v-if="form.errors.time" class="invalid-feedback">
                    {{ form.errors.time }}
                  </div>
                </div>

                <div class="mt-3">
                  <button
                    class="btn btn-primary"
                    :disabled="form.processing"
                    type="submit"
                  >
                    Submit
                  </button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
<script>
import MasterLayout from "@/Layouts/Master";
import { useForm } from "@inertiajs/inertia-vue3";
export default {
  layout: MasterLayout,
  //Upload
  props: {
    value: File,
  },
  data() {
    return {
      src: null,
    };
  },
  //End Upload
  setup() {
    const form = useForm({
      title: "",
      image: null,
      open: "",
      time: "",
    });

    return { form };
  },
  methods: {
    //Upload
    browse() {
      this.$refs.file.click();
    },
    change(e) {
      console.log(e);
      let reader = new FileReader();
      reader.readAsDataURL(e.target.files[0]);
      reader.onload = (e) => {
        this.src = e.target.result;
      };
    },
    //End Upload
  },
};
</script>
