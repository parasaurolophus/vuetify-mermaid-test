<template>
  <v-app>
    <v-main>
      <v-card>
        <v-tabs v-model="tab">
          <v-tab value="1">Placeholder 1</v-tab>
          <v-tab value="2">Mermaid Test</v-tab>
          <v-tab value="3">Placeholder 2</v-tab>
        </v-tabs>
        <v-card-text>
          <v-tabs-window v-model="tab">
            <v-tabs-window-item value="1">
              Nothing to see here!
            </v-tabs-window-item>
            <v-tabs-window-item value="2">
              <MermaidTest />
            </v-tabs-window-item>
            <v-tabs-window-item value="3">
              Nothing to see here, either!
            </v-tabs-window-item>
          </v-tabs-window>
        </v-card-text>
      </v-card>
    </v-main>
  </v-app>
</template>

<script setup>

// initialize mermaid in App.vue

import { onMounted, onUpdated, ref, watch } from "vue"
import mermaid from 'mermaid'

const tab = ref(null)

onMounted(initializeMermaid)
onUpdated(initializeMermaid)

function initializeMermaid() {
  mermaid.initialize({
    theme: 'dark',
    startOnLoad: false,
  })
}
</script>
