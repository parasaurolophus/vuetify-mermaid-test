<template>
    <v-container>
        <v-row>
            <v-col>
                <v-card>
                    <v-card-title>Graph</v-card-title>
                    <v-card-text>
                        <pre class="mermaid">
                            graph LR

                                a --> b
                                a --> c
                                b --> d
                                c --> d
                        </pre>
                    </v-card-text>
                </v-card>
            </v-col>
            <v-col>
                <v-card>
                    <v-card-title>Sequence</v-card-title>
                    <v-card-text>
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
                    </v-card-text>
                </v-card>
            </v-col>
        </v-row>
    </v-container>
</template>

<script setup>
import {  onMounted, onUpdated } from 'vue'
import mermaid from 'mermaid'

onMounted(runMermaid)
onUpdated(runMermaid)

function runMermaid() {
    mermaid.run()
}
</script>
