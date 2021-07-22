
--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `street_id` (`street_id`);

--
-- Index pour la table `addresses_companies`
--
ALTER TABLE `addresses_companies`
  ADD PRIMARY KEY (`address_id`,`company_id`),
  ADD KEY `company_id` (`company_id`);

--
-- Index pour la table `addresses_persons`
--
ALTER TABLE `addresses_persons`
  ADD PRIMARY KEY (`address_id`,`person_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Index pour la table `arrondissements`
--
ALTER TABLE `arrondissements`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `arrondissements_streets`
--
ALTER TABLE `arrondissements_streets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `arrondissement_id` (`arrondissement_id`),
  ADD KEY `street_id` (`street_id`);

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prof_category_id` (`prof_category_id`);

--
-- Index pour la table `companies_external_references`
--
ALTER TABLE `companies_external_references`
  ADD PRIMARY KEY (`company_id`,`external_reference_id`),
  ADD KEY `external_reference_id` (`external_reference_id`);

--
-- Index pour la table `companies_original_references`
--
ALTER TABLE `companies_original_references`
  ADD PRIMARY KEY (`company_id`,`original_reference_id`),
  ADD KEY `original_reference_id` (`original_reference_id`);

--
-- Index pour la table `companies_persons`
--
ALTER TABLE `companies_persons`
  ADD PRIMARY KEY (`company_id`,`person_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Index pour la table `external_references`
--
ALTER TABLE `external_references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reference_type_id` (`reference_type_id`);

--
-- Index pour la table `external_references_persons`
--
ALTER TABLE `external_references_persons`
  ADD PRIMARY KEY (`external_reference_id`,`person_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Index pour la table `ldh_ranks`
--
ALTER TABLE `ldh_ranks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `military_statuses`
--
ALTER TABLE `military_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `occupation_statuses`
--
ALTER TABLE `occupation_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `original_references`
--
ALTER TABLE `original_references`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `original_references_persons`
--
ALTER TABLE `original_references_persons`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `original_reference_id` (`original_reference_id`,`person_id`);

--
-- Index pour la table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prof_category_id` (`prof_category_id`),
  ADD KEY `social_status_id` (`social_status_id`),
  ADD KEY `ldh_rank_id` (`ldh_rank_id`),
  ADD KEY `occupation_status_id` (`occupation_status_id`),
  ADD KEY `military_status_id` (`military_status_id`);

--
-- Index pour la table `prof_categories`
--
ALTER TABLE `prof_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reference_types`
--
ALTER TABLE `reference_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `social_statuses`
--
ALTER TABLE `social_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `streets`
--
ALTER TABLE `streets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4773;

--
-- AUTO_INCREMENT pour la table `arrondissements`
--
ALTER TABLE `arrondissements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT pour la table `external_references`
--
ALTER TABLE `external_references`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ldh_ranks`
--
ALTER TABLE `ldh_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `military_statuses`
--
ALTER TABLE `military_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `occupation_statuses`
--
ALTER TABLE `occupation_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4773;

--
-- AUTO_INCREMENT pour la table `prof_categories`
--
ALTER TABLE `prof_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `reference_types`
--
ALTER TABLE `reference_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `social_statuses`
--
ALTER TABLE `social_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `streets`
--
ALTER TABLE `streets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1033;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`street_id`) REFERENCES `streets` (`id`);

--
-- Contraintes pour la table `addresses_companies`
--
ALTER TABLE `addresses_companies`
  ADD CONSTRAINT `addresses_companies_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `addresses_companies_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Contraintes pour la table `addresses_persons`
--
ALTER TABLE `addresses_persons`
  ADD CONSTRAINT `addresses_persons_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  ADD CONSTRAINT `addresses_persons_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`);

--
-- Contraintes pour la table `arrondissements_streets`
--
ALTER TABLE `arrondissements_streets`
  ADD CONSTRAINT `aro2` FOREIGN KEY (`arrondissement_id`) REFERENCES `arrondissements` (`id`),
  ADD CONSTRAINT `str2` FOREIGN KEY (`street_id`) REFERENCES `streets` (`id`);

--
-- Contraintes pour la table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`prof_category_id`) REFERENCES `prof_categories` (`id`);

--
-- Contraintes pour la table `companies_external_references`
--
ALTER TABLE `companies_external_references`
  ADD CONSTRAINT `companies_external_references_ibfk_1` FOREIGN KEY (`external_reference_id`) REFERENCES `external_references` (`id`),
  ADD CONSTRAINT `companies_external_references_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Contraintes pour la table `companies_original_references`
--
ALTER TABLE `companies_original_references`
  ADD CONSTRAINT `companies_original_references_ibfk_1` FOREIGN KEY (`original_reference_id`) REFERENCES `original_references` (`id`),
  ADD CONSTRAINT `companies_original_references_ibfk_2` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);

--
-- Contraintes pour la table `companies_persons`
--
ALTER TABLE `companies_persons`
  ADD CONSTRAINT `companies_persons_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `companies_persons_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`);

--
-- Contraintes pour la table `external_references`
--
ALTER TABLE `external_references`
  ADD CONSTRAINT `external_references_ibfk_1` FOREIGN KEY (`reference_type_id`) REFERENCES `reference_types` (`id`);

--
-- Contraintes pour la table `external_references_persons`
--
ALTER TABLE `external_references_persons`
  ADD CONSTRAINT `external_references_persons_ibfk_1` FOREIGN KEY (`external_reference_id`) REFERENCES `external_references` (`id`),
  ADD CONSTRAINT `external_references_persons_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`);

--
-- Contraintes pour la table `original_references_persons`
--
ALTER TABLE `original_references_persons`
  ADD CONSTRAINT `original_references_persons_ibfk_1` FOREIGN KEY (`original_reference_id`) REFERENCES `original_references` (`id`),
  ADD CONSTRAINT `original_references_persons_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`);

--
-- Contraintes pour la table `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`prof_category_id`) REFERENCES `prof_categories` (`id`),
  ADD CONSTRAINT `persons_ibfk_2` FOREIGN KEY (`social_status_id`) REFERENCES `social_statuses` (`id`),
  ADD CONSTRAINT `persons_ibfk_3` FOREIGN KEY (`ldh_rank_id`) REFERENCES `ldh_ranks` (`id`),
  ADD CONSTRAINT `persons_ibfk_4` FOREIGN KEY (`occupation_status_id`) REFERENCES `occupation_statuses` (`id`),
  ADD CONSTRAINT `persons_ibfk_5` FOREIGN KEY (`military_status_id`) REFERENCES `military_statuses` (`id`);
