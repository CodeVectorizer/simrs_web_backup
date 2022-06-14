<template>
  <section class="section">
    <div class="section-header">
      <inertia-link :href="this.route('speciality.index')">
        <h1>Dashboard</h1>
      </inertia-link>
    </div>
    <div class="section-body">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <h1 class="py-5">Selamat Datang, Admin</h1>
              {{ $page.props.auth.user }}
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- /.modal -->
</template>
<script>
import MasterLayout from "@/Layouts/Master";

export default {
  layout: MasterLayout,
};
</script>
