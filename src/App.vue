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
import { onMounted, onUpdated, ref } from "vue"
import { useTheme } from 'vuetify'
import mermaid from 'mermaid'

const theme = useTheme()

onMounted(initializeMermaid)
onUpdated(initializeMermaid)

const tab = ref(null)

function initializeMermaid() {
  mermaid.initialize({
    theme: theme.global.current.value.dark ? 'dark' : 'light',
  })
}
</script>
