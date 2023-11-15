#F1::
{
  ; save old values for future restoration
  oldVolume := SoundGetVolume()
  oldMute := SoundGetMute()

  ; play sound on full volume
  SoundSetMute(False)
  SoundSetVolume(100)
  SoundPlay(A_MyDocuments . "\autohotkey-scripts\coffe-cest-dla-merde.mp3", "Wait")

  ; restore old values
  SoundSetVolume(oldVolume)
  SoundSetMute(oldMute)
}
