<template>
  <div id="app">
    <bar />
    <foo />
  </div>
</template>

<script>
import Bar from "./components/Bar";
import Foo from "./components/Foo";
export default {
  name: "App",
  components: {
    Bar,
    Foo,
  },
};
</script>
