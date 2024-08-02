<template>
    <v-card>
        <v-card-title>Graph</v-card-title>
        <v-card-text>
            <v-theme-provider theme="dark" with-background>
                <pre class="mermaid">
                    graph TB
                        a --> b
                        b --> d
                        a --> c
                        c --> d
                </pre>
            </v-theme-provider>
        </v-card-text>
    </v-card>
    <v-card>
        <v-card-title>Sequence</v-card-title>
        <v-card-text>
            <v-theme-provider theme="dark" with-background>
                <pre class="mermaid">
                    sequenceDiagram

                        actor user
                        participant client
                        participant server
                        participant storage

                        user ->> client: enter credentials
                        client ->> client: encrypt credentials
                        client ->> server: authenticate
                        server ->> server: decrypt credentials
                        server ->> storage: verify credentials
                </pre>
            </v-theme-provider>
        </v-card-text>
    </v-card>
    <v-card>
        <v-card-actions>
            <v-btn @click="toggleDarkMode">
                {{ theme.global.name }}
            </v-btn>
        </v-card-actions>
    </v-card>
</template>

<script setup>
import { onMounted, onUpdated } from 'vue'
import { useTheme } from 'vuetify'
import mermaid from 'mermaid'

const theme = useTheme()

onMounted(mermaid.run)
onUpdated(mermaid.run)

function toggleDarkMode() {
    theme.global.name.value = ((theme.global.name.value == 'dark') ? 'light' : 'dark')
}
</script>
